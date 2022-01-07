
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpmc_device {int nirqs; int dev; } ;
typedef int irqreturn_t ;


 int BIT (int) ;
 int GPMC_IRQSTATUS ;
 int GPMC_NR_NAND_IRQS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_warn (int ,char*,int,int) ;
 int generic_handle_irq (int) ;
 int gpmc_irq_domain ;
 int gpmc_read_reg (int ) ;
 int gpmc_write_reg (int ,int) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static irqreturn_t gpmc_handle_irq(int irq, void *data)
{
 int hwirq, virq;
 u32 regval, regvalx;
 struct gpmc_device *gpmc = data;

 regval = gpmc_read_reg(GPMC_IRQSTATUS);
 regvalx = regval;

 if (!regval)
  return IRQ_NONE;

 for (hwirq = 0; hwirq < gpmc->nirqs; hwirq++) {

  if (hwirq == GPMC_NR_NAND_IRQS)
   regvalx >>= 8 - GPMC_NR_NAND_IRQS;

  if (regvalx & BIT(hwirq)) {
   virq = irq_find_mapping(gpmc_irq_domain, hwirq);
   if (!virq) {
    dev_warn(gpmc->dev,
      "spurious irq detected hwirq %d, virq %d\n",
      hwirq, virq);
   }

   generic_handle_irq(virq);
  }
 }

 gpmc_write_reg(GPMC_IRQSTATUS, regval);

 return IRQ_HANDLED;
}
