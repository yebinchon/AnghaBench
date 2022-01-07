
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_ir {int lock; } ;
struct device_node {int dummy; } ;


 int DECODE_MODE_NEC ;
 int IR_DEC_REG0 ;
 int IR_DEC_REG1 ;
 int IR_DEC_REG2 ;
 int REG0_RATE_MASK ;
 int REG1_MODE_MASK ;
 int REG1_MODE_SHIFT ;
 int REG2_MODE_MASK ;
 int REG2_MODE_SHIFT ;
 int meson_ir_set_mask (struct meson_ir*,int ,int ,int) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct meson_ir* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void meson_ir_shutdown(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct meson_ir *ir = platform_get_drvdata(pdev);
 unsigned long flags;

 spin_lock_irqsave(&ir->lock, flags);





 if (of_device_is_compatible(node, "amlogic,meson6-ir"))
  meson_ir_set_mask(ir, IR_DEC_REG1, REG1_MODE_MASK,
      DECODE_MODE_NEC << REG1_MODE_SHIFT);
 else
  meson_ir_set_mask(ir, IR_DEC_REG2, REG2_MODE_MASK,
      DECODE_MODE_NEC << REG2_MODE_SHIFT);


 meson_ir_set_mask(ir, IR_DEC_REG0, REG0_RATE_MASK, 0x13);

 spin_unlock_irqrestore(&ir->lock, flags);
}
