
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; int syncp; int collisions; int errors; } ;
struct TYPE_4__ {int proc_idx; int done_idx; int ndesc; TYPE_3__* desc; } ;
struct ave_private {TYPE_2__ stats_tx; TYPE_1__ tx; } ;
struct TYPE_6__ {int * skbs; } ;


 int AVE_DESCID_TX ;
 int AVE_STS_EC ;
 int AVE_STS_LAST ;
 int AVE_STS_OK ;
 int AVE_STS_OWC ;
 int AVE_STS_OWN ;
 int AVE_STS_PKTLEN_TX_MASK ;
 int DMA_TO_DEVICE ;
 int ave_desc_read_cmdsts (struct net_device*,int ,int) ;
 int ave_dma_unmap (struct net_device*,TYPE_3__*,int ) ;
 int dev_consume_skb_any (int *) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ave_tx_complete(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 u32 proc_idx, done_idx, ndesc, cmdsts;
 unsigned int nr_freebuf = 0;
 unsigned int tx_packets = 0;
 unsigned int tx_bytes = 0;

 proc_idx = priv->tx.proc_idx;
 done_idx = priv->tx.done_idx;
 ndesc = priv->tx.ndesc;


 while (proc_idx != done_idx) {
  cmdsts = ave_desc_read_cmdsts(ndev, AVE_DESCID_TX, done_idx);


  if (cmdsts & AVE_STS_OWN)
   break;


  if (cmdsts & AVE_STS_OK) {
   tx_bytes += cmdsts & AVE_STS_PKTLEN_TX_MASK;

   if (cmdsts & AVE_STS_LAST)
    tx_packets++;
  } else {

   if (cmdsts & AVE_STS_LAST) {
    priv->stats_tx.errors++;
    if (cmdsts & (AVE_STS_OWC | AVE_STS_EC))
     priv->stats_tx.collisions++;
   }
  }


  if (priv->tx.desc[done_idx].skbs) {
   ave_dma_unmap(ndev, &priv->tx.desc[done_idx],
          DMA_TO_DEVICE);
   dev_consume_skb_any(priv->tx.desc[done_idx].skbs);
   priv->tx.desc[done_idx].skbs = ((void*)0);
   nr_freebuf++;
  }
  done_idx = (done_idx + 1) % ndesc;
 }

 priv->tx.done_idx = done_idx;


 u64_stats_update_begin(&priv->stats_tx.syncp);
 priv->stats_tx.packets += tx_packets;
 priv->stats_tx.bytes += tx_bytes;
 u64_stats_update_end(&priv->stats_tx.syncp);


 if (unlikely(netif_queue_stopped(ndev)) && nr_freebuf)
  netif_wake_queue(ndev);

 return nr_freebuf;
}
