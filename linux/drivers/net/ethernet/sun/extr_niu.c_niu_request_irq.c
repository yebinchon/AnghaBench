
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_ldg {int irq; } ;
struct niu {int num_ldg; struct niu_ldg* ldg; int * irq_name; } ;


 int IRQF_SHARED ;
 int free_irq (int ,struct niu_ldg*) ;
 int niu_interrupt ;
 int niu_set_irq_name (struct niu*) ;
 int request_irq (int ,int ,int ,int ,struct niu_ldg*) ;

__attribute__((used)) static int niu_request_irq(struct niu *np)
{
 int i, j, err;

 niu_set_irq_name(np);

 err = 0;
 for (i = 0; i < np->num_ldg; i++) {
  struct niu_ldg *lp = &np->ldg[i];

  err = request_irq(lp->irq, niu_interrupt, IRQF_SHARED,
      np->irq_name[i], lp);
  if (err)
   goto out_free_irqs;

 }

 return 0;

out_free_irqs:
 for (j = 0; j < i; j++) {
  struct niu_ldg *lp = &np->ldg[j];

  free_irq(lp->irq, lp);
 }
 return err;
}
