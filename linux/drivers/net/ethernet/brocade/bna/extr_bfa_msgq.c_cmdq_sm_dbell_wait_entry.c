
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int dummy; } ;


 int bfa_msgq_cmdq_dbell (struct bfa_msgq_cmdq*) ;

__attribute__((used)) static void
cmdq_sm_dbell_wait_entry(struct bfa_msgq_cmdq *cmdq)
{
 bfa_msgq_cmdq_dbell(cmdq);
}
