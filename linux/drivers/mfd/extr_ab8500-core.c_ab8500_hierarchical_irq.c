
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ab8500 {scalar_t__ it_latchhier_num; int dev; } ;
typedef int irqreturn_t ;


 int AB8500_INTERRUPT ;
 scalar_t__ AB8500_IT_LATCHHIER1_REG ;
 int IRQ_HANDLED ;
 int ab8500_handle_hierarchical_latch (struct ab8500*,scalar_t__,scalar_t__) ;
 int dev_vdbg (int ,char*) ;
 int get_register_interruptible (struct ab8500*,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static irqreturn_t ab8500_hierarchical_irq(int irq, void *dev)
{
 struct ab8500 *ab8500 = dev;
 u8 i;

 dev_vdbg(ab8500->dev, "interrupt\n");


 for (i = 0; i < (ab8500->it_latchhier_num); i++) {
  int status;
  u8 hier_val;

  status = get_register_interruptible(ab8500, AB8500_INTERRUPT,
   AB8500_IT_LATCHHIER1_REG + i, &hier_val);
  if (status < 0 || hier_val == 0)
   continue;

  status = ab8500_handle_hierarchical_latch(ab8500, i, hier_val);
  if (status < 0)
   break;
 }
 return IRQ_HANDLED;
}
