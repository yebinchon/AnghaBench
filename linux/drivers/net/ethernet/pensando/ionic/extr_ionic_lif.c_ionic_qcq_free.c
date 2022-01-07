
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct ionic_qcq* info; } ;
struct TYPE_6__ {struct ionic_qcq* info; } ;
struct TYPE_5__ {int index; } ;
struct ionic_qcq {int flags; TYPE_3__ q; TYPE_2__ cq; TYPE_1__ intr; int base_pa; int * base; int total_size; } ;
struct ionic_lif {TYPE_4__* ionic; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct device* dev; } ;


 int IONIC_QCQ_F_INTR ;
 int devm_kfree (struct device*,struct ionic_qcq*) ;
 int dma_free_coherent (struct device*,int ,int *,int ) ;
 int ionic_intr_free (struct ionic_lif*,int ) ;

__attribute__((used)) static void ionic_qcq_free(struct ionic_lif *lif, struct ionic_qcq *qcq)
{
 struct device *dev = lif->ionic->dev;

 if (!qcq)
  return;

 dma_free_coherent(dev, qcq->total_size, qcq->base, qcq->base_pa);
 qcq->base = ((void*)0);
 qcq->base_pa = 0;

 if (qcq->flags & IONIC_QCQ_F_INTR)
  ionic_intr_free(lif, qcq->intr.index);

 devm_kfree(dev, qcq->cq.info);
 qcq->cq.info = ((void*)0);
 devm_kfree(dev, qcq->q.info);
 qcq->q.info = ((void*)0);
 devm_kfree(dev, qcq);
}
