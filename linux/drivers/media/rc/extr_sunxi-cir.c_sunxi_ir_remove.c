
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_ir {int rc; int ir_lock; scalar_t__ base; int rst; int apb_clk; int clk; } ;
struct platform_device {int dummy; } ;


 int REG_RXSTA_CLEARALL ;
 scalar_t__ SUNXI_IR_CTL_REG ;
 scalar_t__ SUNXI_IR_RXINT_REG ;
 scalar_t__ SUNXI_IR_RXSTA_REG ;
 int clk_disable_unprepare (int ) ;
 struct sunxi_ir* platform_get_drvdata (struct platform_device*) ;
 int rc_unregister_device (int ) ;
 int reset_control_assert (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sunxi_ir_remove(struct platform_device *pdev)
{
 unsigned long flags;
 struct sunxi_ir *ir = platform_get_drvdata(pdev);

 clk_disable_unprepare(ir->clk);
 clk_disable_unprepare(ir->apb_clk);
 reset_control_assert(ir->rst);

 spin_lock_irqsave(&ir->ir_lock, flags);

 writel(0, ir->base + SUNXI_IR_RXINT_REG);

 writel(REG_RXSTA_CLEARALL, ir->base + SUNXI_IR_RXSTA_REG);

 writel(0, ir->base + SUNXI_IR_CTL_REG);
 spin_unlock_irqrestore(&ir->ir_lock, flags);

 rc_unregister_device(ir->rc);
 return 0;
}
