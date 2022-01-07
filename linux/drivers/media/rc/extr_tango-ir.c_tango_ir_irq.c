
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_ir {scalar_t__ rc6_base; scalar_t__ rc5_base; } ;
typedef int irqreturn_t ;


 unsigned int BIT (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ IR_INT ;
 scalar_t__ RC6_CTRL ;
 unsigned int readl_relaxed (scalar_t__) ;
 int tango_ir_handle_nec (struct tango_ir*) ;
 int tango_ir_handle_rc5 (struct tango_ir*) ;
 int tango_ir_handle_rc6 (struct tango_ir*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tango_ir_irq(int irq, void *dev_id)
{
 struct tango_ir *ir = dev_id;
 unsigned int rc5_stat;
 unsigned int rc6_stat;

 rc5_stat = readl_relaxed(ir->rc5_base + IR_INT);
 writel_relaxed(rc5_stat, ir->rc5_base + IR_INT);

 rc6_stat = readl_relaxed(ir->rc6_base + RC6_CTRL);
 writel_relaxed(rc6_stat, ir->rc6_base + RC6_CTRL);

 if (!(rc5_stat & 3) && !(rc6_stat & BIT(31)))
  return IRQ_NONE;

 if (rc5_stat & BIT(0))
  tango_ir_handle_rc5(ir);

 if (rc5_stat & BIT(1))
  tango_ir_handle_nec(ir);

 if (rc6_stat & BIT(31))
  tango_ir_handle_rc6(ir);

 return IRQ_HANDLED;
}
