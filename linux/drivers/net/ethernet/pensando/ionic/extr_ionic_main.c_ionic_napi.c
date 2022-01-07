
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct napi_struct {int dummy; } ;
struct ionic_cq {TYPE_4__* bound_intr; TYPE_3__* lif; } ;
struct ionic_qcq {struct ionic_cq cq; } ;
typedef int ionic_cq_done_cb ;
typedef int ionic_cq_cb ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {TYPE_2__* ionic; } ;
struct TYPE_5__ {int intr_ctrl; } ;
struct TYPE_6__ {TYPE_1__ idev; } ;


 int DEBUG_STATS_INTR_REARM (TYPE_4__*) ;
 int DEBUG_STATS_NAPI_POLL (struct ionic_qcq*,int) ;
 int IONIC_INTR_CRED_RESET_COALESCE ;
 int IONIC_INTR_CRED_UNMASK ;
 int ionic_cq_service (struct ionic_cq*,int,int ,int ,void*) ;
 int ionic_intr_credits (int ,int ,int,int) ;
 scalar_t__ napi_complete_done (struct napi_struct*,int) ;
 struct ionic_qcq* napi_to_qcq (struct napi_struct*) ;

int ionic_napi(struct napi_struct *napi, int budget, ionic_cq_cb cb,
        ionic_cq_done_cb done_cb, void *done_arg)
{
 struct ionic_qcq *qcq = napi_to_qcq(napi);
 struct ionic_cq *cq = &qcq->cq;
 u32 work_done, flags = 0;

 work_done = ionic_cq_service(cq, budget, cb, done_cb, done_arg);

 if (work_done < budget && napi_complete_done(napi, work_done)) {
  flags |= IONIC_INTR_CRED_UNMASK;
  DEBUG_STATS_INTR_REARM(cq->bound_intr);
 }

 if (work_done || flags) {
  flags |= IONIC_INTR_CRED_RESET_COALESCE;
  ionic_intr_credits(cq->lif->ionic->idev.intr_ctrl,
       cq->bound_intr->index,
       work_done, flags);
 }

 DEBUG_STATS_NAPI_POLL(qcq, work_done);

 return work_done;
}
