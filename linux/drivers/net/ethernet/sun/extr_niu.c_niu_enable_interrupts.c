
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_ldg {int dummy; } ;
struct niu {int num_ldg; struct niu_ldg* ldg; } ;


 int niu_enable_ldn_in_ldg (struct niu*,struct niu_ldg*,int) ;
 int niu_ldg_rearm (struct niu*,struct niu_ldg*,int) ;

__attribute__((used)) static int niu_enable_interrupts(struct niu *np, int on)
{
 int i;

 for (i = 0; i < np->num_ldg; i++) {
  struct niu_ldg *lp = &np->ldg[i];
  int err;

  err = niu_enable_ldn_in_ldg(np, lp, on);
  if (err)
   return err;
 }
 for (i = 0; i < np->num_ldg; i++)
  niu_ldg_rearm(np, &np->ldg[i], on);

 return 0;
}
