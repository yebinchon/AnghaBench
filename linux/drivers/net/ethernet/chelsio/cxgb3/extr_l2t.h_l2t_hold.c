
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int refcnt; } ;
struct l2t_data {int nfree; } ;


 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;

__attribute__((used)) static inline void l2t_hold(struct l2t_data *d, struct l2t_entry *e)
{
 if (d && atomic_add_return(1, &e->refcnt) == 1)
  atomic_dec(&d->nfree);
}
