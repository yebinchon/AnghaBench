
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct mtk_tx_ring {int thresh; int free_count; } ;
struct mtk_mac {struct mtk_eth* hw; } ;
struct mtk_eth {int page_lock; int state; struct mtk_tx_ring tx_ring; } ;
struct TYPE_4__ {int gso_type; int gso_size; } ;
struct TYPE_3__ {int check; } ;


 int MTK_RESETTING ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int htons (int ) ;
 int mtk_cal_txd_req (struct sk_buff*) ;
 int mtk_stop_queue (struct mtk_eth*) ;
 scalar_t__ mtk_tx_map (struct sk_buff*,struct net_device*,int,struct mtk_tx_ring*,int) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;
 int netif_err (struct mtk_eth*,int ,struct net_device*,char*) ;
 int netif_warn (struct mtk_eth*,int ,struct net_device*,char*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 int test_bit (int ,int *) ;
 int tx_err ;
 int tx_queued ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mtk_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct mtk_mac *mac = netdev_priv(dev);
 struct mtk_eth *eth = mac->hw;
 struct mtk_tx_ring *ring = &eth->tx_ring;
 struct net_device_stats *stats = &dev->stats;
 bool gso = 0;
 int tx_num;





 spin_lock(&eth->page_lock);

 if (unlikely(test_bit(MTK_RESETTING, &eth->state)))
  goto drop;

 tx_num = mtk_cal_txd_req(skb);
 if (unlikely(atomic_read(&ring->free_count) <= tx_num)) {
  mtk_stop_queue(eth);
  netif_err(eth, tx_queued, dev,
     "Tx Ring full when queue awake!\n");
  spin_unlock(&eth->page_lock);
  return NETDEV_TX_BUSY;
 }


 if (skb_is_gso(skb)) {
  if (skb_cow_head(skb, 0)) {
   netif_warn(eth, tx_err, dev,
       "GSO expand head fail.\n");
   goto drop;
  }

  if (skb_shinfo(skb)->gso_type &
    (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {
   gso = 1;
   tcp_hdr(skb)->check = htons(skb_shinfo(skb)->gso_size);
  }
 }

 if (mtk_tx_map(skb, dev, tx_num, ring, gso) < 0)
  goto drop;

 if (unlikely(atomic_read(&ring->free_count) <= ring->thresh))
  mtk_stop_queue(eth);

 spin_unlock(&eth->page_lock);

 return NETDEV_TX_OK;

drop:
 spin_unlock(&eth->page_lock);
 stats->tx_dropped++;
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
