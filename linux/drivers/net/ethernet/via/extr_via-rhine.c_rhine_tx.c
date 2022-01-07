
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {int syncp; int packets; int bytes; } ;
struct rhine_private {unsigned int dirty_tx; unsigned int cur_tx; int quirks; struct sk_buff** tx_skbuff; scalar_t__* tx_skbuff_dma; TYPE_4__ tx_stats; TYPE_2__* tx_ring; } ;
struct TYPE_7__ {int collisions; int tx_fifo_errors; int tx_heartbeat_errors; int tx_aborted_errors; int tx_window_errors; int tx_carrier_errors; int tx_errors; } ;
struct TYPE_5__ {struct device* parent; } ;
struct net_device {TYPE_3__ stats; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int tx_status; } ;


 int DMA_TO_DEVICE ;
 int DescOwn ;
 unsigned int TX_RING_SIZE ;
 int cpu_to_le32 (int) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dma_unmap_single (struct device*,scalar_t__,scalar_t__,int ) ;
 int le32_to_cpu (int ) ;
 int netdev_completed_queue (struct net_device*,unsigned int,unsigned int) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct rhine_private*,int ,struct net_device*,char*,int,...) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ rhine_tx_queue_full (struct rhine_private*) ;
 int rqRhineI ;
 int smp_rmb () ;
 int smp_wmb () ;
 int tx_done ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void rhine_tx(struct net_device *dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 struct device *hwdev = dev->dev.parent;
 unsigned int pkts_compl = 0, bytes_compl = 0;
 unsigned int dirty_tx = rp->dirty_tx;
 unsigned int cur_tx;
 struct sk_buff *skb;







 smp_rmb();
 cur_tx = rp->cur_tx;

 while (dirty_tx != cur_tx) {
  unsigned int entry = dirty_tx % TX_RING_SIZE;
  u32 txstatus = le32_to_cpu(rp->tx_ring[entry].tx_status);

  netif_dbg(rp, tx_done, dev, "Tx scavenge %d status %08x\n",
     entry, txstatus);
  if (txstatus & DescOwn)
   break;
  skb = rp->tx_skbuff[entry];
  if (txstatus & 0x8000) {
   netif_dbg(rp, tx_done, dev,
      "Transmit error, Tx status %08x\n", txstatus);
   dev->stats.tx_errors++;
   if (txstatus & 0x0400)
    dev->stats.tx_carrier_errors++;
   if (txstatus & 0x0200)
    dev->stats.tx_window_errors++;
   if (txstatus & 0x0100)
    dev->stats.tx_aborted_errors++;
   if (txstatus & 0x0080)
    dev->stats.tx_heartbeat_errors++;
   if (((rp->quirks & rqRhineI) && txstatus & 0x0002) ||
       (txstatus & 0x0800) || (txstatus & 0x1000)) {
    dev->stats.tx_fifo_errors++;
    rp->tx_ring[entry].tx_status = cpu_to_le32(DescOwn);
    break;
   }

  } else {
   if (rp->quirks & rqRhineI)
    dev->stats.collisions += (txstatus >> 3) & 0x0F;
   else
    dev->stats.collisions += txstatus & 0x0F;
   netif_dbg(rp, tx_done, dev, "collisions: %1.1x:%1.1x\n",
      (txstatus >> 3) & 0xF, txstatus & 0xF);

   u64_stats_update_begin(&rp->tx_stats.syncp);
   rp->tx_stats.bytes += skb->len;
   rp->tx_stats.packets++;
   u64_stats_update_end(&rp->tx_stats.syncp);
  }

  if (rp->tx_skbuff_dma[entry]) {
   dma_unmap_single(hwdev,
      rp->tx_skbuff_dma[entry],
      skb->len,
      DMA_TO_DEVICE);
  }
  bytes_compl += skb->len;
  pkts_compl++;
  dev_consume_skb_any(skb);
  rp->tx_skbuff[entry] = ((void*)0);
  dirty_tx++;
 }

 rp->dirty_tx = dirty_tx;

 smp_wmb();

 netdev_completed_queue(dev, pkts_compl, bytes_compl);


 if (!rhine_tx_queue_full(rp) && netif_queue_stopped(dev)) {
  netif_wake_queue(dev);
  smp_rmb();

  if (rhine_tx_queue_full(rp))
   netif_stop_queue(dev);
 }
}
