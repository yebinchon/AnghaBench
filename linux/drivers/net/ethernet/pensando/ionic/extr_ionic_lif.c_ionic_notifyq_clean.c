
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ionic_lif {TYPE_2__* notifyqcq; TYPE_1__* ionic; } ;
struct ionic_dev {int intr_ctrl; } ;
struct ionic_cq {TYPE_3__* bound_intr; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {struct ionic_cq cq; } ;
struct TYPE_4__ {struct ionic_dev idev; } ;


 int IONIC_INTR_CRED_RESET_COALESCE ;
 int ionic_cq_service (struct ionic_cq*,int,int ,int *,int *) ;
 int ionic_intr_credits (int ,int ,int,int ) ;
 int ionic_notifyq_service ;

__attribute__((used)) static int ionic_notifyq_clean(struct ionic_lif *lif, int budget)
{
 struct ionic_dev *idev = &lif->ionic->idev;
 struct ionic_cq *cq = &lif->notifyqcq->cq;
 u32 work_done;

 work_done = ionic_cq_service(cq, budget, ionic_notifyq_service,
         ((void*)0), ((void*)0));
 if (work_done)
  ionic_intr_credits(idev->intr_ctrl, cq->bound_intr->index,
       work_done, IONIC_INTR_CRED_RESET_COALESCE);

 return work_done;
}
