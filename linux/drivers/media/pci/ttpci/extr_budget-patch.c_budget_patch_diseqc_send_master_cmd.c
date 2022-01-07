
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct dvb_diseqc_master_cmd {int msg; int msg_len; } ;
struct budget_patch {int dummy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int av7110_send_diseqc_msg (struct budget_patch*,int ,int ,int ) ;

__attribute__((used)) static int budget_patch_diseqc_send_master_cmd(struct dvb_frontend* fe, struct dvb_diseqc_master_cmd* cmd)
{
 struct budget_patch* budget = (struct budget_patch*) fe->dvb->priv;

 av7110_send_diseqc_msg (budget, cmd->msg_len, cmd->msg, 0);

 return 0;
}
