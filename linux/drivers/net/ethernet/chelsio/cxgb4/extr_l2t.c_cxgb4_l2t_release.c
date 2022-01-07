
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int t4_l2e_free (struct l2t_entry*) ;

void cxgb4_l2t_release(struct l2t_entry *e)
{
 if (atomic_dec_and_test(&e->refcnt))
  t4_l2e_free(e);
}
