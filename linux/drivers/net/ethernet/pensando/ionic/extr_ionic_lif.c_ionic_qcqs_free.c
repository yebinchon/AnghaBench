
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_lif {unsigned int nxqs; TYPE_2__* txqcqs; TYPE_2__* rxqcqs; int * adminqcq; int * notifyqcq; TYPE_1__* ionic; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* stats; } ;
struct TYPE_3__ {struct device* dev; } ;


 int devm_kfree (struct device*,TYPE_2__*) ;
 int ionic_qcq_free (struct ionic_lif*,int *) ;

__attribute__((used)) static void ionic_qcqs_free(struct ionic_lif *lif)
{
 struct device *dev = lif->ionic->dev;
 unsigned int i;

 if (lif->notifyqcq) {
  ionic_qcq_free(lif, lif->notifyqcq);
  lif->notifyqcq = ((void*)0);
 }

 if (lif->adminqcq) {
  ionic_qcq_free(lif, lif->adminqcq);
  lif->adminqcq = ((void*)0);
 }

 for (i = 0; i < lif->nxqs; i++)
  if (lif->rxqcqs[i].stats)
   devm_kfree(dev, lif->rxqcqs[i].stats);

 devm_kfree(dev, lif->rxqcqs);
 lif->rxqcqs = ((void*)0);

 for (i = 0; i < lif->nxqs; i++)
  if (lif->txqcqs[i].stats)
   devm_kfree(dev, lif->txqcqs[i].stats);

 devm_kfree(dev, lif->txqcqs);
 lif->txqcqs = ((void*)0);
}
