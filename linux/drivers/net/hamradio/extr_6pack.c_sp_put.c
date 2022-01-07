
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sixpack {int dead; int refcnt; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void sp_put(struct sixpack *sp)
{
 if (refcount_dec_and_test(&sp->refcnt))
  complete(&sp->dead);
}
