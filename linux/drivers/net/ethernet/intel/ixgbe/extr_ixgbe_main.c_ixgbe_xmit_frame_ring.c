
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct vlan_hdr {int h_vlan_TCI; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; int len; } ;
struct ixgbe_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; scalar_t__ protocol; int bytecount; } ;
struct TYPE_4__ {int tx_busy; } ;
struct ixgbe_ring {size_t next_to_use; int state; TYPE_2__* netdev; struct ixgbe_tx_buffer* tx_buffer_info; TYPE_1__ tx_stats; } ;
struct ixgbe_ipsec_tx_data {int member_0; } ;
struct ixgbe_adapter {int flags; int state; int ptp_tx_work; struct sk_buff* ptp_tx_skb; int tx_hwtstamp_skipped; int ptp_tx_start; scalar_t__ ptp_clock; } ;
typedef int netdev_tx_t ;
typedef int _vhdr ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {unsigned short nr_frags; int tx_flags; int * frags; } ;
struct TYPE_5__ {int features; } ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_FCOE ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_TX_FLAGS_CC ;
 int IXGBE_TX_FLAGS_HW_VLAN ;
 int IXGBE_TX_FLAGS_SW_VLAN ;
 int IXGBE_TX_FLAGS_TSTAMP ;
 int IXGBE_TX_FLAGS_VLAN_PRIO_MASK ;
 int IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT ;
 int IXGBE_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NETIF_F_FCOE_CRC ;
 int NETIF_F_FSO ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 int TC_PRIO_CONTROL ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int __IXGBE_PTP_TX_IN_PROGRESS ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 int cancel_work_sync (int *) ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (int) ;
 int ixgbe_atr (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ;
 int ixgbe_fso (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int *) ;
 int ixgbe_ipsec_tx (struct ixgbe_ring*,struct ixgbe_tx_buffer*,struct ixgbe_ipsec_tx_data*) ;
 scalar_t__ ixgbe_maybe_stop_tx (struct ixgbe_ring*,scalar_t__) ;
 int ixgbe_tso (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int *,struct ixgbe_ipsec_tx_data*) ;
 int ixgbe_tx_csum (struct ixgbe_ring*,struct ixgbe_tx_buffer*,struct ixgbe_ipsec_tx_data*) ;
 scalar_t__ ixgbe_tx_map (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int ) ;
 int jiffies ;
 int ntohs (int ) ;
 int schedule_work (int *) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_frag_size (int *) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff*,int ,int,struct vlan_hdr*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int test_and_set_bit_lock (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;
 scalar_t__ xfrm_offload (struct sk_buff*) ;

netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
     struct ixgbe_adapter *adapter,
     struct ixgbe_ring *tx_ring)
{
 struct ixgbe_tx_buffer *first;
 int tso;
 u32 tx_flags = 0;
 unsigned short f;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 struct ixgbe_ipsec_tx_data ipsec_tx = { 0 };
 __be16 protocol = skb->protocol;
 u8 hdr_len = 0;
 for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
  count += TXD_USE_COUNT(skb_frag_size(
      &skb_shinfo(skb)->frags[f]));

 if (ixgbe_maybe_stop_tx(tx_ring, count + 3)) {
  tx_ring->tx_stats.tx_busy++;
  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;


 if (skb_vlan_tag_present(skb)) {
  tx_flags |= skb_vlan_tag_get(skb) << IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;

 } else if (protocol == htons(ETH_P_8021Q)) {
  struct vlan_hdr *vhdr, _vhdr;
  vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
  if (!vhdr)
   goto out_drop;

  tx_flags |= ntohs(vhdr->h_vlan_TCI) <<
      IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_SW_VLAN;
 }
 protocol = vlan_get_protocol(skb);

 if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
     adapter->ptp_clock) {
  if (!test_and_set_bit_lock(__IXGBE_PTP_TX_IN_PROGRESS,
        &adapter->state)) {
   skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
   tx_flags |= IXGBE_TX_FLAGS_TSTAMP;


   adapter->ptp_tx_skb = skb_get(skb);
   adapter->ptp_tx_start = jiffies;
   schedule_work(&adapter->ptp_tx_work);
  } else {
   adapter->tx_hwtstamp_skipped++;
  }
 }
 if ((adapter->flags & IXGBE_FLAG_DCB_ENABLED) &&
     ((tx_flags & (IXGBE_TX_FLAGS_HW_VLAN | IXGBE_TX_FLAGS_SW_VLAN)) ||
      (skb->priority != TC_PRIO_CONTROL))) {
  tx_flags &= ~IXGBE_TX_FLAGS_VLAN_PRIO_MASK;
  tx_flags |= (skb->priority & 0x7) <<
     IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT;
  if (tx_flags & IXGBE_TX_FLAGS_SW_VLAN) {
   struct vlan_ethhdr *vhdr;

   if (skb_cow_head(skb, 0))
    goto out_drop;
   vhdr = (struct vlan_ethhdr *)skb->data;
   vhdr->h_vlan_TCI = htons(tx_flags >>
       IXGBE_TX_FLAGS_VLAN_SHIFT);
  } else {
   tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
  }
 }


 first->tx_flags = tx_flags;
 first->protocol = protocol;
 tso = ixgbe_tso(tx_ring, first, &hdr_len, &ipsec_tx);
 if (tso < 0)
  goto out_drop;
 else if (!tso)
  ixgbe_tx_csum(tx_ring, first, &ipsec_tx);


 if (test_bit(__IXGBE_TX_FDIR_INIT_DONE, &tx_ring->state))
  ixgbe_atr(tx_ring, first);




 if (ixgbe_tx_map(tx_ring, first, hdr_len))
  goto cleanup_tx_timestamp;

 return NETDEV_TX_OK;

out_drop:
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);
cleanup_tx_timestamp:
 if (unlikely(tx_flags & IXGBE_TX_FLAGS_TSTAMP)) {
  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
  cancel_work_sync(&adapter->ptp_tx_work);
  clear_bit_unlock(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);
 }

 return NETDEV_TX_OK;
}
