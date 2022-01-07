
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int name; int sge; } ;


 int FULL_INIT_DONE ;
 int pr_alert (char*,int ) ;
 int t1_interrupts_disable (struct adapter*) ;
 int t1_sge_stop (int ) ;

void t1_fatal_err(struct adapter *adapter)
{
 if (adapter->flags & FULL_INIT_DONE) {
  t1_sge_stop(adapter->sge);
  t1_interrupts_disable(adapter);
 }
 pr_alert("%s: encountered fatal error, operation suspended\n",
   adapter->name);
}
