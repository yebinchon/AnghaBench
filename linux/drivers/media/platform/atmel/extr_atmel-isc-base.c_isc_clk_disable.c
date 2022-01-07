
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isc_clk {int lock; int regmap; int id; } ;
struct clk_hw {int dummy; } ;


 int ISC_CLK (int ) ;
 int ISC_CLKDIS ;
 int regmap_write (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isc_clk* to_isc_clk (struct clk_hw*) ;

__attribute__((used)) static void isc_clk_disable(struct clk_hw *hw)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);
 u32 id = isc_clk->id;
 unsigned long flags;

 spin_lock_irqsave(&isc_clk->lock, flags);
 regmap_write(isc_clk->regmap, ISC_CLKDIS, ISC_CLK(id));
 spin_unlock_irqrestore(&isc_clk->lock, flags);
}
