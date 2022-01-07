
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct igb_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; int protocol; int bytecount; } ;
struct igb_ring {size_t next_to_use; int netdev; struct igb_tx_buffer* tx_buffer_info; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct TYPE_5__ {scalar_t__ tx_type; } ;
struct igb_adapter {int state; int ptp_tx_work; TYPE_3__ hw; struct sk_buff* ptp_tx_skb; int tx_hwtstamp_skipped; int ptp_tx_start; TYPE_1__ tstamp_config; } ;
typedef int netdev_tx_t ;
typedef int __be16 ;
struct TYPE_8__ {unsigned short nr_frags; int tx_flags; int * frags; } ;


 scalar_t__ HWTSTAMP_TX_ON ;
 int IGB_TX_FLAGS_TSTAMP ;
 int IGB_TX_FLAGS_VLAN ;
 int IGB_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int __IGB_PTP_TX_IN_PROGRESS ;
 int cancel_work_sync (int *) ;
 int clear_bit_unlock (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ e1000_82576 ;
 scalar_t__ igb_maybe_stop_tx (struct igb_ring*,scalar_t__) ;
 int igb_tso (struct igb_ring*,struct igb_tx_buffer*,int *) ;
 int igb_tx_csum (struct igb_ring*,struct igb_tx_buffer*) ;
 scalar_t__ igb_tx_map (struct igb_ring*,struct igb_tx_buffer*,int ) ;
 int jiffies ;
 struct igb_adapter* netdev_priv (int ) ;
 int schedule_work (int *) ;
 int skb_frag_size (int *) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 int test_and_set_bit_lock (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int vlan_get_protocol (struct sk_buff*) ;

netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
    struct igb_ring *tx_ring)
{
 struct igb_tx_buffer *first;
 int tso;
 u32 tx_flags = 0;
 unsigned short f;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 __be16 protocol = vlan_get_protocol(skb);
 u8 hdr_len = 0;







 for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
  count += TXD_USE_COUNT(skb_frag_size(
      &skb_shinfo(skb)->frags[f]));

 if (igb_maybe_stop_tx(tx_ring, count + 3)) {

  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;

 if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
  struct igb_adapter *adapter = netdev_priv(tx_ring->netdev);

  if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
      !test_and_set_bit_lock(__IGB_PTP_TX_IN_PROGRESS,
        &adapter->state)) {
   skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
   tx_flags |= IGB_TX_FLAGS_TSTAMP;

   adapter->ptp_tx_skb = skb_get(skb);
   adapter->ptp_tx_start = jiffies;
   if (adapter->hw.mac.type == e1000_82576)
    schedule_work(&adapter->ptp_tx_work);
  } else {
   adapter->tx_hwtstamp_skipped++;
  }
 }

 if (skb_vlan_tag_present(skb)) {
  tx_flags |= IGB_TX_FLAGS_VLAN;
  tx_flags |= (skb_vlan_tag_get(skb) << IGB_TX_FLAGS_VLAN_SHIFT);
 }


 first->tx_flags = tx_flags;
 first->protocol = protocol;

 tso = igb_tso(tx_ring, first, &hdr_len);
 if (tso < 0)
  goto out_drop;
 else if (!tso)
  igb_tx_csum(tx_ring, first);

 if (igb_tx_map(tx_ring, first, hdr_len))
  goto cleanup_tx_tstamp;

 return NETDEV_TX_OK;

out_drop:
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);
cleanup_tx_tstamp:
 if (unlikely(tx_flags & IGB_TX_FLAGS_TSTAMP)) {
  struct igb_adapter *adapter = netdev_priv(tx_ring->netdev);

  dev_kfree_skb_any(adapter->ptp_tx_skb);
  adapter->ptp_tx_skb = ((void*)0);
  if (adapter->hw.mac.type == e1000_82576)
   cancel_work_sync(&adapter->ptp_tx_work);
  clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
 }

 return NETDEV_TX_OK;
}
