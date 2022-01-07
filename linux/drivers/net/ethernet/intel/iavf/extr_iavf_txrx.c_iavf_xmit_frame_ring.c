
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct iavf_tx_buffer {int gso_segs; struct sk_buff* skb; int bytecount; } ;
struct TYPE_2__ {int tx_busy; int tx_linearize; } ;
struct iavf_ring {size_t next_to_use; struct iavf_tx_buffer* tx_bi; TYPE_1__ tx_stats; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IAVF_TX_DESC_CMD_ICRC ;
 int IAVF_TX_DESC_DTYPE_CONTEXT ;
 int IAVF_TX_FLAGS_IPV4 ;
 int IAVF_TX_FLAGS_IPV6 ;
 int IAVF_TX_FLAGS_TSO ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ __skb_linearize (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ iavf_chk_linearize (struct sk_buff*,int) ;
 int iavf_create_tx_ctx (struct iavf_ring*,int ,int ,int ) ;
 scalar_t__ iavf_maybe_stop_tx (struct iavf_ring*,int) ;
 int iavf_trace (int ,struct sk_buff*,struct iavf_ring*) ;
 int iavf_tso (struct iavf_tx_buffer*,int *,int *) ;
 int iavf_tx_enable_csum (struct sk_buff*,int *,int *,int *,struct iavf_ring*,int *) ;
 int iavf_tx_map (struct iavf_ring*,struct sk_buff*,struct iavf_tx_buffer*,int ,int ,int ,int ) ;
 scalar_t__ iavf_tx_prepare_vlan_flags (struct sk_buff*,struct iavf_ring*,int *) ;
 int iavf_txd_use_count (int ) ;
 int iavf_xmit_descriptor_count (struct sk_buff*) ;
 int prefetch (int ) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;
 int xmit_frame_ring ;
 int xmit_frame_ring_drop ;

__attribute__((used)) static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
     struct iavf_ring *tx_ring)
{
 u64 cd_type_cmd_tso_mss = IAVF_TX_DESC_DTYPE_CONTEXT;
 u32 cd_tunneling = 0, cd_l2tag2 = 0;
 struct iavf_tx_buffer *first;
 u32 td_offset = 0;
 u32 tx_flags = 0;
 __be16 protocol;
 u32 td_cmd = 0;
 u8 hdr_len = 0;
 int tso, count;


 prefetch(skb->data);

 iavf_trace(xmit_frame_ring, skb, tx_ring);

 count = iavf_xmit_descriptor_count(skb);
 if (iavf_chk_linearize(skb, count)) {
  if (__skb_linearize(skb)) {
   dev_kfree_skb_any(skb);
   return NETDEV_TX_OK;
  }
  count = iavf_txd_use_count(skb->len);
  tx_ring->tx_stats.tx_linearize++;
 }







 if (iavf_maybe_stop_tx(tx_ring, count + 4 + 1)) {
  tx_ring->tx_stats.tx_busy++;
  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_bi[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;


 if (iavf_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags))
  goto out_drop;


 protocol = vlan_get_protocol(skb);


 if (protocol == htons(ETH_P_IP))
  tx_flags |= IAVF_TX_FLAGS_IPV4;
 else if (protocol == htons(ETH_P_IPV6))
  tx_flags |= IAVF_TX_FLAGS_IPV6;

 tso = iavf_tso(first, &hdr_len, &cd_type_cmd_tso_mss);

 if (tso < 0)
  goto out_drop;
 else if (tso)
  tx_flags |= IAVF_TX_FLAGS_TSO;


 tso = iavf_tx_enable_csum(skb, &tx_flags, &td_cmd, &td_offset,
      tx_ring, &cd_tunneling);
 if (tso < 0)
  goto out_drop;


 td_cmd |= IAVF_TX_DESC_CMD_ICRC;

 iavf_create_tx_ctx(tx_ring, cd_type_cmd_tso_mss,
      cd_tunneling, cd_l2tag2);

 iavf_tx_map(tx_ring, skb, first, tx_flags, hdr_len,
      td_cmd, td_offset);

 return NETDEV_TX_OK;

out_drop:
 iavf_trace(xmit_frame_ring_drop, first->skb, tx_ring);
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);
 return NETDEV_TX_OK;
}
