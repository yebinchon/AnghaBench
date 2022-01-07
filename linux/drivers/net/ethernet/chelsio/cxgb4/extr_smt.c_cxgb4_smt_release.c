
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {scalar_t__ refcnt; int lock; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t4_smte_free (struct smt_entry*) ;

void cxgb4_smt_release(struct smt_entry *e)
{
 spin_lock_bh(&e->lock);
 if ((--e->refcnt) == 0)
  t4_smte_free(e);
 spin_unlock_bh(&e->lock);
}
