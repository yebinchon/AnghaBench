
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ionic_dev {int intr_ctrl; } ;
struct ionic_cq {TYPE_3__* bound_intr; int num_descs; TYPE_2__* lif; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {TYPE_1__* ionic; } ;
struct TYPE_4__ {struct ionic_dev idev; } ;


 int IONIC_INTR_CRED_RESET_COALESCE ;
 int ionic_intr_credits (int ,int ,scalar_t__,int ) ;
 scalar_t__ ionic_rx_walk_cq (struct ionic_cq*,int ) ;

void ionic_rx_flush(struct ionic_cq *cq)
{
 struct ionic_dev *idev = &cq->lif->ionic->idev;
 u32 work_done;

 work_done = ionic_rx_walk_cq(cq, cq->num_descs);

 if (work_done)
  ionic_intr_credits(idev->intr_ctrl, cq->bound_intr->index,
       work_done, IONIC_INTR_CRED_RESET_COALESCE);
}
