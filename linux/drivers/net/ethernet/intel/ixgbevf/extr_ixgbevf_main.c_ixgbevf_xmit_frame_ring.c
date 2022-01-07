
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct ixgbevf_tx_buffer {int gso_segs; struct sk_buff* skb; int protocol; int tx_flags; int bytecount; } ;
struct TYPE_3__ {int tx_busy; } ;
struct ixgbevf_ring {size_t next_to_use; struct ixgbevf_tx_buffer* tx_buffer_info; TYPE_1__ tx_stats; } ;
struct ixgbevf_ipsec_tx_data {int member_0; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {unsigned short nr_frags; int * frags; } ;


 scalar_t__ DESC_NEEDED ;
 int IXGBE_TX_FLAGS_VLAN ;
 int IXGBE_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ is_link_local_ether_addr (int *) ;
 int ixgbevf_ipsec_tx (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*,struct ixgbevf_ipsec_tx_data*) ;
 scalar_t__ ixgbevf_maybe_stop_tx (struct ixgbevf_ring*,scalar_t__) ;
 int ixgbevf_tso (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*,int *,struct ixgbevf_ipsec_tx_data*) ;
 int ixgbevf_tx_csum (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*,struct ixgbevf_ipsec_tx_data*) ;
 int ixgbevf_tx_map (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*,int ) ;
 int skb_frag_size (int *) ;
 int * skb_header_pointer (struct sk_buff*,int ,int ,int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int vlan_get_protocol (struct sk_buff*) ;
 scalar_t__ xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static int ixgbevf_xmit_frame_ring(struct sk_buff *skb,
       struct ixgbevf_ring *tx_ring)
{
 struct ixgbevf_tx_buffer *first;
 int tso;
 u32 tx_flags = 0;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 struct ixgbevf_ipsec_tx_data ipsec_tx = { 0 };



 u8 hdr_len = 0;
 u8 *dst_mac = skb_header_pointer(skb, 0, 0, ((void*)0));

 if (!dst_mac || is_link_local_ether_addr(dst_mac)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }
 count += skb_shinfo(skb)->nr_frags;

 if (ixgbevf_maybe_stop_tx(tx_ring, count + 3)) {
  tx_ring->tx_stats.tx_busy++;
  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;

 if (skb_vlan_tag_present(skb)) {
  tx_flags |= skb_vlan_tag_get(skb);
  tx_flags <<= IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_VLAN;
 }


 first->tx_flags = tx_flags;
 first->protocol = vlan_get_protocol(skb);





 tso = ixgbevf_tso(tx_ring, first, &hdr_len, &ipsec_tx);
 if (tso < 0)
  goto out_drop;
 else if (!tso)
  ixgbevf_tx_csum(tx_ring, first, &ipsec_tx);

 ixgbevf_tx_map(tx_ring, first, hdr_len);

 ixgbevf_maybe_stop_tx(tx_ring, DESC_NEEDED);

 return NETDEV_TX_OK;

out_drop:
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);

 return NETDEV_TX_OK;
}
