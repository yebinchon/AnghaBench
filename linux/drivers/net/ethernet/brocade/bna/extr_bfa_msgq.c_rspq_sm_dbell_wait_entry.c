
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_msgq_rspq {TYPE_1__* msgq; } ;
struct TYPE_2__ {int ioc; } ;


 int bfa_msgq_rspq_dbell (struct bfa_msgq_rspq*) ;
 int bfa_nw_ioc_is_disabled (int ) ;

__attribute__((used)) static void
rspq_sm_dbell_wait_entry(struct bfa_msgq_rspq *rspq)
{
 if (!bfa_nw_ioc_is_disabled(rspq->msgq->ioc))
  bfa_msgq_rspq_dbell(rspq);
}
