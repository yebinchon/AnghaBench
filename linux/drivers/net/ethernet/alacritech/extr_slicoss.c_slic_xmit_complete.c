
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct slic_tx_queue {unsigned int done_idx; struct slic_tx_buffer* txbuffs; } ;
struct slic_tx_buffer {TYPE_3__* skb; } ;
struct TYPE_5__ {unsigned int tx_bytes; unsigned int tx_packets; int syncp; } ;
struct slic_device {TYPE_2__ stats; TYPE_1__* pdev; struct net_device* netdev; struct slic_tx_queue txq; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 unsigned int SLIC_INVALID_STAT_DESC_IDX ;
 unsigned int SLIC_MAX_TX_COMPLETIONS ;
 scalar_t__ SLIC_MIN_TX_WAKEUP_DESCS ;
 int dev_kfree_skb_any (TYPE_3__*) ;
 int dma_unmap_addr (struct slic_tx_buffer*,int ) ;
 int dma_unmap_len (struct slic_tx_buffer*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int map_addr ;
 int map_len ;
 int netdev_warn (struct net_device*,char*,unsigned int) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_tx_lock (struct net_device*) ;
 int netif_tx_unlock (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ slic_get_free_tx_descs (struct slic_tx_queue*) ;
 unsigned int slic_next_compl_idx (struct slic_device*) ;
 int smp_wmb () ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void slic_xmit_complete(struct slic_device *sdev)
{
 struct slic_tx_queue *txq = &sdev->txq;
 struct net_device *dev = sdev->netdev;
 struct slic_tx_buffer *buff;
 unsigned int frames = 0;
 unsigned int bytes = 0;
 unsigned int idx;




 do {
  idx = slic_next_compl_idx(sdev);
  if (idx == SLIC_INVALID_STAT_DESC_IDX)
   break;

  txq->done_idx = idx;
  buff = &txq->txbuffs[idx];

  if (unlikely(!buff->skb)) {
   netdev_warn(dev,
        "no skb found for desc idx %i\n", idx);
   continue;
  }
  dma_unmap_single(&sdev->pdev->dev,
     dma_unmap_addr(buff, map_addr),
     dma_unmap_len(buff, map_len), DMA_TO_DEVICE);

  bytes += buff->skb->len;
  frames++;

  dev_kfree_skb_any(buff->skb);
  buff->skb = ((void*)0);
 } while (frames < SLIC_MAX_TX_COMPLETIONS);

 smp_wmb();

 u64_stats_update_begin(&sdev->stats.syncp);
 sdev->stats.tx_bytes += bytes;
 sdev->stats.tx_packets += frames;
 u64_stats_update_end(&sdev->stats.syncp);

 netif_tx_lock(dev);
 if (netif_queue_stopped(dev) &&
     (slic_get_free_tx_descs(txq) >= SLIC_MIN_TX_WAKEUP_DESCS))
  netif_wake_queue(dev);
 netif_tx_unlock(dev);
}
