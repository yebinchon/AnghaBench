
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc {scalar_t__ send_addr; } ;
struct net_device {int dummy; } ;
struct hip04_priv {unsigned int tx_tail; TYPE_1__** tx_skb; scalar_t__* tx_phys; int dev; struct tx_desc* tx_desc; int tx_head; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int DMA_TO_DEVICE ;
 int READ_ONCE (int ) ;
 int TX_DESC_NUM ;
 unsigned int TX_NEXT (unsigned int) ;
 int dev_kfree_skb (TYPE_1__*) ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int netdev_completed_queue (struct net_device*,unsigned int,unsigned int) ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int smp_rmb () ;
 int smp_wmb () ;
 unsigned int tx_count (int ,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hip04_tx_reclaim(struct net_device *ndev, bool force)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 unsigned tx_tail = priv->tx_tail;
 struct tx_desc *desc;
 unsigned int bytes_compl = 0, pkts_compl = 0;
 unsigned int count;

 smp_rmb();
 count = tx_count(READ_ONCE(priv->tx_head), tx_tail);
 if (count == 0)
  goto out;

 while (count) {
  desc = &priv->tx_desc[tx_tail];
  if (desc->send_addr != 0) {
   if (force)
    desc->send_addr = 0;
   else
    break;
  }

  if (priv->tx_phys[tx_tail]) {
   dma_unmap_single(priv->dev, priv->tx_phys[tx_tail],
      priv->tx_skb[tx_tail]->len,
      DMA_TO_DEVICE);
   priv->tx_phys[tx_tail] = 0;
  }
  pkts_compl++;
  bytes_compl += priv->tx_skb[tx_tail]->len;
  dev_kfree_skb(priv->tx_skb[tx_tail]);
  priv->tx_skb[tx_tail] = ((void*)0);
  tx_tail = TX_NEXT(tx_tail);
  count--;
 }

 priv->tx_tail = tx_tail;
 smp_wmb();

out:
 if (pkts_compl || bytes_compl)
  netdev_completed_queue(ndev, pkts_compl, bytes_compl);

 if (unlikely(netif_queue_stopped(ndev)) && (count < (TX_DESC_NUM - 1)))
  netif_wake_queue(ndev);

 return count;
}
