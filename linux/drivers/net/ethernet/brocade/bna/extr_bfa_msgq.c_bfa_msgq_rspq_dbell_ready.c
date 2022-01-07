
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_rspq {int dummy; } ;


 int RSPQ_E_DB_READY ;
 int bfa_fsm_send_event (struct bfa_msgq_rspq*,int ) ;

__attribute__((used)) static void
bfa_msgq_rspq_dbell_ready(void *arg)
{
 struct bfa_msgq_rspq *rspq = (struct bfa_msgq_rspq *)arg;
 bfa_fsm_send_event(rspq, RSPQ_E_DB_READY);
}
