
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ionic_lif {int nxqs; TYPE_2__* txqcqs; TYPE_1__* rxqcqs; } ;
struct TYPE_7__ {int q; } ;
struct TYPE_6__ {TYPE_3__* qcq; } ;
struct TYPE_5__ {TYPE_3__* qcq; } ;


 int ionic_qcq_disable (TYPE_3__*) ;
 int ionic_qcq_enable (TYPE_3__*) ;
 int ionic_rx_fill (int *) ;

__attribute__((used)) static int ionic_txrx_enable(struct ionic_lif *lif)
{
 int i, err;

 for (i = 0; i < lif->nxqs; i++) {
  err = ionic_qcq_enable(lif->txqcqs[i].qcq);
  if (err)
   goto err_out;

  ionic_rx_fill(&lif->rxqcqs[i].qcq->q);
  err = ionic_qcq_enable(lif->rxqcqs[i].qcq);
  if (err) {
   ionic_qcq_disable(lif->txqcqs[i].qcq);
   goto err_out;
  }
 }

 return 0;

err_out:
 while (i--) {
  ionic_qcq_disable(lif->rxqcqs[i].qcq);
  ionic_qcq_disable(lif->txqcqs[i].qcq);
 }

 return err;
}
