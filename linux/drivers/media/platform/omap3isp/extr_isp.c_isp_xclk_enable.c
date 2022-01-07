
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_xclk {int enabled; int lock; int divider; } ;
struct clk_hw {int dummy; } ;


 int isp_xclk_update (struct isp_xclk*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp_xclk* to_isp_xclk (struct clk_hw*) ;

__attribute__((used)) static int isp_xclk_enable(struct clk_hw *hw)
{
 struct isp_xclk *xclk = to_isp_xclk(hw);
 unsigned long flags;

 spin_lock_irqsave(&xclk->lock, flags);
 isp_xclk_update(xclk, xclk->divider);
 xclk->enabled = 1;
 spin_unlock_irqrestore(&xclk->lock, flags);

 return 0;
}
