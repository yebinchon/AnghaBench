
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; int syncp; } ;
struct rtl8169_private {unsigned int dirty_tx; unsigned int cur_tx; TYPE_1__ tx_stats; TYPE_2__* TxDescArray; struct ring_info* tx_skb; } ;
struct ring_info {TYPE_3__* skb; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int opts1; } ;


 int DescOwn ;
 int MAX_SKB_FRAGS ;
 unsigned int NUM_TX_DESC ;
 int dma_rmb () ;
 int le32_to_cpu (int ) ;
 int napi_consume_skb (TYPE_3__*,int) ;
 int netdev_completed_queue (struct net_device*,unsigned int,unsigned int) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rtl8169_doorbell (struct rtl8169_private*) ;
 int rtl8169_unmap_tx_skb (int ,struct ring_info*,TYPE_2__*) ;
 scalar_t__ rtl_tx_slots_avail (struct rtl8169_private*,int ) ;
 int smp_mb () ;
 int smp_rmb () ;
 int tp_to_dev (struct rtl8169_private*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void rtl_tx(struct net_device *dev, struct rtl8169_private *tp,
     int budget)
{
 unsigned int dirty_tx, tx_left, bytes_compl = 0, pkts_compl = 0;

 dirty_tx = tp->dirty_tx;
 smp_rmb();
 tx_left = tp->cur_tx - dirty_tx;

 while (tx_left > 0) {
  unsigned int entry = dirty_tx % NUM_TX_DESC;
  struct ring_info *tx_skb = tp->tx_skb + entry;
  u32 status;

  status = le32_to_cpu(tp->TxDescArray[entry].opts1);
  if (status & DescOwn)
   break;





  dma_rmb();

  rtl8169_unmap_tx_skb(tp_to_dev(tp), tx_skb,
         tp->TxDescArray + entry);
  if (tx_skb->skb) {
   pkts_compl++;
   bytes_compl += tx_skb->skb->len;
   napi_consume_skb(tx_skb->skb, budget);
   tx_skb->skb = ((void*)0);
  }
  dirty_tx++;
  tx_left--;
 }

 if (tp->dirty_tx != dirty_tx) {
  netdev_completed_queue(dev, pkts_compl, bytes_compl);

  u64_stats_update_begin(&tp->tx_stats.syncp);
  tp->tx_stats.packets += pkts_compl;
  tp->tx_stats.bytes += bytes_compl;
  u64_stats_update_end(&tp->tx_stats.syncp);

  tp->dirty_tx = dirty_tx;







  smp_mb();
  if (netif_queue_stopped(dev) &&
      rtl_tx_slots_avail(tp, MAX_SKB_FRAGS)) {
   netif_wake_queue(dev);
  }






  if (tp->cur_tx != dirty_tx)
   rtl8169_doorbell(tp);
 }
}
