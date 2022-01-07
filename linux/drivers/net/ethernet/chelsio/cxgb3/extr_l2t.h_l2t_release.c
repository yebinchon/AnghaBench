
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct l2t_entry {int refcnt; } ;
struct l2t_data {int dummy; } ;


 struct l2t_data* L2DATA (struct t3cdev*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int t3_l2e_free (struct l2t_data*,struct l2t_entry*) ;

__attribute__((used)) static inline void l2t_release(struct t3cdev *t, struct l2t_entry *e)
{
 struct l2t_data *d;

 rcu_read_lock();
 d = L2DATA(t);

 if (atomic_dec_and_test(&e->refcnt) && d)
  t3_l2e_free(d, e);

 rcu_read_unlock();
}
