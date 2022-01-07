
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct budget {int vpe_tasklet; } ;


 int MASK_10 ;
 int dprintk (int,char*,struct saa7146_dev*,struct budget*) ;
 int tasklet_schedule (int *) ;

void ttpci_budget_irq10_handler(struct saa7146_dev *dev, u32 * isr)
{
 struct budget *budget = (struct budget *) dev->ext_priv;

 dprintk(8, "dev: %p, budget: %p\n", dev, budget);

 if (*isr & MASK_10)
  tasklet_schedule(&budget->vpe_tasklet);
}
