
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct budget_av {int dummy; } ;


 int MASK_10 ;
 int dprintk (int,char*,struct saa7146_dev*,struct budget_av*) ;
 int ttpci_budget_irq10_handler (struct saa7146_dev*,int*) ;

__attribute__((used)) static void budget_av_irq(struct saa7146_dev *dev, u32 * isr)
{
 struct budget_av *budget_av = (struct budget_av *) dev->ext_priv;

 dprintk(8, "dev: %p, budget_av: %p\n", dev, budget_av);

 if (*isr & MASK_10)
  ttpci_budget_irq10_handler(dev, isr);
}
