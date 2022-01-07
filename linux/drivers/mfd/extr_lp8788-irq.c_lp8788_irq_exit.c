
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788 {int irqdm; scalar_t__ irq; } ;


 int free_irq (scalar_t__,int ) ;

void lp8788_irq_exit(struct lp8788 *lp)
{
 if (lp->irq)
  free_irq(lp->irq, lp->irqdm);
}
