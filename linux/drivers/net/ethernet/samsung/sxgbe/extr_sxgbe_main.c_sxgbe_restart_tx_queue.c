
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sxgbe_tx_queue {scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;
struct sxgbe_priv_data {TYPE_4__* dev; int ioaddr; TYPE_2__* hw; struct sxgbe_tx_queue** txq; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_7__ {int tx_errors; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_6__ {TYPE_1__* dma; } ;
struct TYPE_5__ {int (* start_tx_queue ) (int ,int) ;int (* stop_tx_queue ) (int ,int) ;} ;


 struct netdev_queue* netdev_get_tx_queue (TYPE_4__*,int) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int tx_free_ring_skbufs (struct sxgbe_tx_queue*) ;

__attribute__((used)) static void sxgbe_restart_tx_queue(struct sxgbe_priv_data *priv, int queue_num)
{
 struct sxgbe_tx_queue *tx_ring = priv->txq[queue_num];
 struct netdev_queue *dev_txq = netdev_get_tx_queue(priv->dev,
          queue_num);


 netif_tx_stop_queue(dev_txq);


 priv->hw->dma->stop_tx_queue(priv->ioaddr, queue_num);


 tx_free_ring_skbufs(tx_ring);


 tx_ring->cur_tx = 0;
 tx_ring->dirty_tx = 0;


 priv->hw->dma->start_tx_queue(priv->ioaddr, queue_num);

 priv->dev->stats.tx_errors++;


 netif_tx_wake_queue(dev_txq);
}
