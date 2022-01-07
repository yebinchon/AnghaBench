
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget {int dummy; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int SendDiSEqCMsg (struct budget*,int ,int *,int) ;

__attribute__((used)) static int budget_diseqc_send_burst(struct dvb_frontend *fe,
        enum fe_sec_mini_cmd minicmd)
{
 struct budget* budget = (struct budget*) fe->dvb->priv;

 SendDiSEqCMsg (budget, 0, ((void*)0), minicmd);

 return 0;
}
