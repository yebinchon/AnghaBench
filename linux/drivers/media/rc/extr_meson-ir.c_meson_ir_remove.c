
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_ir {int lock; } ;


 int IR_DEC_REG1 ;
 int REG1_ENABLE ;
 int meson_ir_set_mask (struct meson_ir*,int ,int ,int ) ;
 struct meson_ir* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int meson_ir_remove(struct platform_device *pdev)
{
 struct meson_ir *ir = platform_get_drvdata(pdev);
 unsigned long flags;


 spin_lock_irqsave(&ir->lock, flags);
 meson_ir_set_mask(ir, IR_DEC_REG1, REG1_ENABLE, 0);
 spin_unlock_irqrestore(&ir->lock, flags);

 return 0;
}
