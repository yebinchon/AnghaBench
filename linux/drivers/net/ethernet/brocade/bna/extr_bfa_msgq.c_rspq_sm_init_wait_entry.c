
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_msgq_rspq {TYPE_1__* msgq; } ;
struct TYPE_2__ {int init_wc; } ;


 int bfa_wc_down (int *) ;

__attribute__((used)) static void
rspq_sm_init_wait_entry(struct bfa_msgq_rspq *rspq)
{
 bfa_wc_down(&rspq->msgq->init_wc);
}
