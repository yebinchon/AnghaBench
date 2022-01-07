
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {int size; scalar_t__ descs_phys; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int * descs; scalar_t__ tso_hdrs_phys; int * tso_hdrs; int tx_skb; int id; } ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int MVNETA_DESC_ALIGNED_SIZE ;
 int TSO_HEADER_SIZE ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int kfree (int ) ;
 struct netdev_queue* netdev_get_tx_queue (TYPE_2__*,int ) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;

__attribute__((used)) static void mvneta_txq_sw_deinit(struct mvneta_port *pp,
     struct mvneta_tx_queue *txq)
{
 struct netdev_queue *nq = netdev_get_tx_queue(pp->dev, txq->id);

 kfree(txq->tx_skb);

 if (txq->tso_hdrs)
  dma_free_coherent(pp->dev->dev.parent,
      txq->size * TSO_HEADER_SIZE,
      txq->tso_hdrs, txq->tso_hdrs_phys);
 if (txq->descs)
  dma_free_coherent(pp->dev->dev.parent,
      txq->size * MVNETA_DESC_ALIGNED_SIZE,
      txq->descs, txq->descs_phys);

 netdev_tx_reset_queue(nq);

 txq->descs = ((void*)0);
 txq->last_desc = 0;
 txq->next_desc_to_proc = 0;
 txq->descs_phys = 0;
}
