
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {scalar_t__ refcnt; int state; } ;


 int SMT_STATE_UNUSED ;

__attribute__((used)) static void t4_smte_free(struct smt_entry *e)
{
 if (e->refcnt == 0) {
  e->state = SMT_STATE_UNUSED;
 }
}
