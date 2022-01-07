
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_lif {unsigned int nxqs; TYPE_2__* rxqcqs; TYPE_1__* txqcqs; } ;
struct TYPE_6__ {int q; int cq; } ;
struct TYPE_5__ {TYPE_3__* qcq; } ;
struct TYPE_4__ {TYPE_3__* qcq; } ;


 int ionic_lif_qcq_deinit (struct ionic_lif*,TYPE_3__*) ;
 int ionic_rx_empty (int *) ;
 int ionic_rx_flush (int *) ;
 int ionic_tx_flush (int *) ;

__attribute__((used)) static void ionic_txrx_deinit(struct ionic_lif *lif)
{
 unsigned int i;

 for (i = 0; i < lif->nxqs; i++) {
  ionic_lif_qcq_deinit(lif, lif->txqcqs[i].qcq);
  ionic_tx_flush(&lif->txqcqs[i].qcq->cq);

  ionic_lif_qcq_deinit(lif, lif->rxqcqs[i].qcq);
  ionic_rx_flush(&lif->rxqcqs[i].qcq->cq);
  ionic_rx_empty(&lif->rxqcqs[i].qcq->q);
 }
}
