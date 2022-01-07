
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int poll; } ;
struct TYPE_3__ {scalar_t__ polling; int holdoff_tmr; } ;
struct sge_qset {TYPE_2__ napi; TYPE_1__ rspq; } ;
struct qset_params {int coalesce_usecs; scalar_t__ polling; } ;


 int max (int,unsigned int) ;
 int napi_rx_handler ;
 int ofld_poll ;

void t3_update_qset_coalesce(struct sge_qset *qs, const struct qset_params *p)
{
 qs->rspq.holdoff_tmr = max(p->coalesce_usecs * 10, 1U);
 qs->rspq.polling = p->polling;
 qs->napi.poll = p->polling ? napi_rx_handler : ofld_poll;
}
