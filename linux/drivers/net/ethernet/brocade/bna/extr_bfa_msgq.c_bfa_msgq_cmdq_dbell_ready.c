
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int dummy; } ;


 int CMDQ_E_DB_READY ;
 int bfa_fsm_send_event (struct bfa_msgq_cmdq*,int ) ;

__attribute__((used)) static void
bfa_msgq_cmdq_dbell_ready(void *arg)
{
 struct bfa_msgq_cmdq *cmdq = (struct bfa_msgq_cmdq *)arg;
 bfa_fsm_send_event(cmdq, CMDQ_E_DB_READY);
}
