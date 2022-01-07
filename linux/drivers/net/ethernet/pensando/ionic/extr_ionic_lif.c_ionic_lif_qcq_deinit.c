
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vector; int index; } ;
struct ionic_qcq {int flags; int napi; TYPE_1__ intr; } ;
struct ionic_lif {TYPE_2__* ionic; } ;
struct ionic_dev {int intr_ctrl; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; struct ionic_dev idev; } ;


 int IONIC_INTR_MASK_SET ;
 int IONIC_QCQ_F_INITED ;
 int IONIC_QCQ_F_INTR ;
 int devm_free_irq (struct device*,int ,int *) ;
 int ionic_debugfs_del_qcq (struct ionic_qcq*) ;
 int ionic_intr_mask (int ,int ,int ) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void ionic_lif_qcq_deinit(struct ionic_lif *lif, struct ionic_qcq *qcq)
{
 struct ionic_dev *idev = &lif->ionic->idev;
 struct device *dev = lif->ionic->dev;

 if (!qcq)
  return;

 ionic_debugfs_del_qcq(qcq);

 if (!(qcq->flags & IONIC_QCQ_F_INITED))
  return;

 if (qcq->flags & IONIC_QCQ_F_INTR) {
  ionic_intr_mask(idev->intr_ctrl, qcq->intr.index,
    IONIC_INTR_MASK_SET);
  devm_free_irq(dev, qcq->intr.vector, &qcq->napi);
  netif_napi_del(&qcq->napi);
 }

 qcq->flags &= ~IONIC_QCQ_F_INITED;
}
