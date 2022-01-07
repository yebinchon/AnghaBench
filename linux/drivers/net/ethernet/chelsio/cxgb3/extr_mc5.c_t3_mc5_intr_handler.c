
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int del_act_empty; int unknown_cmd; int nfa_srch_err; int active_rgn_full; int dispq_parity_err; int reqq_parity_err; int parity_err; } ;
struct mc5 {TYPE_1__ stats; scalar_t__ parity_enabled; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int A_MC5_DB_INT_CAUSE ;
 int CH_ALERT (struct adapter*,char*) ;
 int F_ACTRGNFULL ;
 int F_DELACTEMPTY ;
 int F_DISPQPARERR ;
 int F_NFASRCHFAIL ;
 int F_PARITYERR ;
 int F_REQQPARERR ;
 int F_UNKNOWNCMD ;
 int MC5_INT_FATAL ;
 int t3_fatal_err (struct adapter*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

void t3_mc5_intr_handler(struct mc5 *mc5)
{
 struct adapter *adap = mc5->adapter;
 u32 cause = t3_read_reg(adap, A_MC5_DB_INT_CAUSE);

 if ((cause & F_PARITYERR) && mc5->parity_enabled) {
  CH_ALERT(adap, "MC5 parity error\n");
  mc5->stats.parity_err++;
 }

 if (cause & F_REQQPARERR) {
  CH_ALERT(adap, "MC5 request queue parity error\n");
  mc5->stats.reqq_parity_err++;
 }

 if (cause & F_DISPQPARERR) {
  CH_ALERT(adap, "MC5 dispatch queue parity error\n");
  mc5->stats.dispq_parity_err++;
 }

 if (cause & F_ACTRGNFULL)
  mc5->stats.active_rgn_full++;
 if (cause & F_NFASRCHFAIL)
  mc5->stats.nfa_srch_err++;
 if (cause & F_UNKNOWNCMD)
  mc5->stats.unknown_cmd++;
 if (cause & F_DELACTEMPTY)
  mc5->stats.del_act_empty++;
 if (cause & MC5_INT_FATAL)
  t3_fatal_err(adap);

 t3_write_reg(adap, A_MC5_DB_INT_CAUSE, cause);
}
