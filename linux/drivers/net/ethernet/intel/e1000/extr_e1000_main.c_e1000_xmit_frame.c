
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct sk_buff {unsigned int data_len; scalar_t__ ip_summed; int no_fcs; int len; } ;
struct net_device {int dummy; } ;
struct e1000_tx_ring {int last_tx_tso; unsigned int next_to_use; TYPE_1__* buffer_info; scalar_t__ tdt; } ;
struct e1000_hw {int mac_type; scalar_t__ bus_type; scalar_t__ hw_addr; } ;
struct e1000_adapter {scalar_t__ pcix_82544; int fifo_stall_task; int flags; struct e1000_tx_ring* tx_ring; struct e1000_hw hw; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ __be16 ;
struct TYPE_4__ {unsigned int gso_size; unsigned int nr_frags; int * frags; } ;
struct TYPE_3__ {scalar_t__ time_stamp; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int E1000_MAX_DATA_PER_TXD ;
 unsigned int E1000_MAX_TXD_PWR ;
 unsigned int E1000_TX_FLAGS_CSUM ;
 unsigned int E1000_TX_FLAGS_IPV4 ;
 unsigned int E1000_TX_FLAGS_NO_FCS ;
 unsigned int E1000_TX_FLAGS_TSO ;
 unsigned int E1000_TX_FLAGS_VLAN ;
 unsigned int E1000_TX_FLAGS_VLAN_SHIFT ;
 int ETH_P_IP ;
 int MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ TXD_USE_COUNT (unsigned int,unsigned int) ;
 int __E1000_DOWN ;
 int __pskb_pull_tail (struct sk_buff*,unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int drv ;

 int e1000_82547 ;
 scalar_t__ e1000_82547_fifo_workaround (struct e1000_adapter*,struct sk_buff*) ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_maybe_stop_tx (struct net_device*,struct e1000_tx_ring*,int) ;
 int e1000_tso (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*,scalar_t__) ;
 int e1000_tx_csum (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*,scalar_t__) ;
 int e1000_tx_map (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int e1000_tx_queue (struct e1000_adapter*,struct e1000_tx_ring*,unsigned int,int) ;
 int e_err (int ,char*) ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int fls (unsigned int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int netdev_get_tx_queue (struct net_device*,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netdev_sent_queue (struct net_device*,int ) ;
 int netdev_xmit_more () ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ netif_xmit_stopped (int ) ;
 int schedule_delayed_work (int *,int) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 unsigned int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static netdev_tx_t e1000_xmit_frame(struct sk_buff *skb,
        struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_tx_ring *tx_ring;
 unsigned int first, max_per_txd = E1000_MAX_DATA_PER_TXD;
 unsigned int max_txd_pwr = E1000_MAX_TXD_PWR;
 unsigned int tx_flags = 0;
 unsigned int len = skb_headlen(skb);
 unsigned int nr_frags;
 unsigned int mss;
 int count = 0;
 int tso;
 unsigned int f;
 __be16 protocol = vlan_get_protocol(skb);






 tx_ring = adapter->tx_ring;





 if (eth_skb_pad(skb))
  return NETDEV_TX_OK;

 mss = skb_shinfo(skb)->gso_size;







 if (mss) {
  u8 hdr_len;
  max_per_txd = min(mss << 2, max_per_txd);
  max_txd_pwr = fls(max_per_txd) - 1;

  hdr_len = skb_transport_offset(skb) + tcp_hdrlen(skb);
  if (skb->data_len && hdr_len == len) {
   switch (hw->mac_type) {
    unsigned int pull_size;
   case 128:







    if ((unsigned long)(skb_tail_pointer(skb) - 1)
        & 4)
     break;

    pull_size = min((unsigned int)4, skb->data_len);
    if (!__pskb_pull_tail(skb, pull_size)) {
     e_err(drv, "__pskb_pull_tail "
           "failed.\n");
     dev_kfree_skb_any(skb);
     return NETDEV_TX_OK;
    }
    len = skb_headlen(skb);
    break;
   default:

    break;
   }
  }
 }


 if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
  count++;
 count++;


 if (!skb->data_len && tx_ring->last_tx_tso && !skb_is_gso(skb))
  count++;

 count += TXD_USE_COUNT(len, max_txd_pwr);

 if (adapter->pcix_82544)
  count++;




 if (unlikely((hw->bus_type == e1000_bus_type_pcix) &&
   (len > 2015)))
  count++;

 nr_frags = skb_shinfo(skb)->nr_frags;
 for (f = 0; f < nr_frags; f++)
  count += TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->frags[f]),
           max_txd_pwr);
 if (adapter->pcix_82544)
  count += nr_frags;




 if (unlikely(e1000_maybe_stop_tx(netdev, tx_ring, count + 2)))
  return NETDEV_TX_BUSY;

 if (unlikely((hw->mac_type == e1000_82547) &&
       (e1000_82547_fifo_workaround(adapter, skb)))) {
  netif_stop_queue(netdev);
  if (!test_bit(__E1000_DOWN, &adapter->flags))
   schedule_delayed_work(&adapter->fifo_stall_task, 1);
  return NETDEV_TX_BUSY;
 }

 if (skb_vlan_tag_present(skb)) {
  tx_flags |= E1000_TX_FLAGS_VLAN;
  tx_flags |= (skb_vlan_tag_get(skb) <<
        E1000_TX_FLAGS_VLAN_SHIFT);
 }

 first = tx_ring->next_to_use;

 tso = e1000_tso(adapter, tx_ring, skb, protocol);
 if (tso < 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (likely(tso)) {
  if (likely(hw->mac_type != 128))
   tx_ring->last_tx_tso = 1;
  tx_flags |= E1000_TX_FLAGS_TSO;
 } else if (likely(e1000_tx_csum(adapter, tx_ring, skb, protocol)))
  tx_flags |= E1000_TX_FLAGS_CSUM;

 if (protocol == htons(ETH_P_IP))
  tx_flags |= E1000_TX_FLAGS_IPV4;

 if (unlikely(skb->no_fcs))
  tx_flags |= E1000_TX_FLAGS_NO_FCS;

 count = e1000_tx_map(adapter, tx_ring, skb, first, max_per_txd,
        nr_frags, mss);

 if (count) {







  int desc_needed = MAX_SKB_FRAGS + 7;

  netdev_sent_queue(netdev, skb->len);
  skb_tx_timestamp(skb);

  e1000_tx_queue(adapter, tx_ring, tx_flags, count);





  if (adapter->pcix_82544)
   desc_needed += MAX_SKB_FRAGS + 1;


  e1000_maybe_stop_tx(netdev, tx_ring, desc_needed);

  if (!netdev_xmit_more() ||
      netif_xmit_stopped(netdev_get_tx_queue(netdev, 0))) {
   writel(tx_ring->next_to_use, hw->hw_addr + tx_ring->tdt);
  }
 } else {
  dev_kfree_skb_any(skb);
  tx_ring->buffer_info[first].time_stamp = 0;
  tx_ring->next_to_use = first;
 }

 return NETDEV_TX_OK;
}
