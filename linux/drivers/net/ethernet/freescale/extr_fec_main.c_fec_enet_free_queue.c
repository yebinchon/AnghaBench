
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fec_enet_private {int num_tx_queues; int num_rx_queues; struct fec_enet_priv_tx_q** tx_queue; struct fec_enet_priv_tx_q** rx_queue; TYPE_1__* pdev; } ;
struct TYPE_4__ {int ring_size; } ;
struct fec_enet_priv_tx_q {int tso_hdrs_dma; scalar_t__ tso_hdrs; TYPE_2__ bd; } ;
struct TYPE_3__ {int dev; } ;


 int TSO_HEADER_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (struct fec_enet_priv_tx_q*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fec_enet_free_queue(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int i;
 struct fec_enet_priv_tx_q *txq;

 for (i = 0; i < fep->num_tx_queues; i++)
  if (fep->tx_queue[i] && fep->tx_queue[i]->tso_hdrs) {
   txq = fep->tx_queue[i];
   dma_free_coherent(&fep->pdev->dev,
       txq->bd.ring_size * TSO_HEADER_SIZE,
       txq->tso_hdrs,
       txq->tso_hdrs_dma);
  }

 for (i = 0; i < fep->num_rx_queues; i++)
  kfree(fep->rx_queue[i]);
 for (i = 0; i < fep->num_tx_queues; i++)
  kfree(fep->tx_queue[i]);
}
