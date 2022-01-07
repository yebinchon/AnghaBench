
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int irq_domain; int dev; } ;
typedef int irqreturn_t ;


 unsigned int BIT (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TPS65217_NUM_IRQ ;
 int TPS65217_REG_INT ;
 int dev_err (int ,char*,int) ;
 int handle_nested_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 int tps65217_reg_read (struct tps65217*,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t tps65217_irq_thread(int irq, void *data)
{
 struct tps65217 *tps = data;
 unsigned int status;
 bool handled = 0;
 int i;
 int ret;

 ret = tps65217_reg_read(tps, TPS65217_REG_INT, &status);
 if (ret < 0) {
  dev_err(tps->dev, "Failed to read IRQ status: %d\n",
   ret);
  return IRQ_NONE;
 }

 for (i = 0; i < TPS65217_NUM_IRQ; i++) {
  if (status & BIT(i)) {
   handle_nested_irq(irq_find_mapping(tps->irq_domain, i));
   handled = 1;
  }
 }

 if (handled)
  return IRQ_HANDLED;

 return IRQ_NONE;
}
