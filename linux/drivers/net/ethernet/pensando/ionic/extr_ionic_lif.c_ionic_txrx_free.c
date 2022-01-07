
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_lif {unsigned int nxqs; TYPE_2__* rxqcqs; TYPE_1__* txqcqs; } ;
struct TYPE_4__ {int * qcq; } ;
struct TYPE_3__ {int * qcq; } ;


 int ionic_qcq_free (struct ionic_lif*,int *) ;

__attribute__((used)) static void ionic_txrx_free(struct ionic_lif *lif)
{
 unsigned int i;

 for (i = 0; i < lif->nxqs; i++) {
  ionic_qcq_free(lif, lif->txqcqs[i].qcq);
  lif->txqcqs[i].qcq = ((void*)0);

  ionic_qcq_free(lif, lif->rxqcqs[i].qcq);
  lif->rxqcqs[i].qcq = ((void*)0);
 }
}
