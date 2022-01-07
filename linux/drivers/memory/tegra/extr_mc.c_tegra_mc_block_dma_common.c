
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mc_reset {int control; int bit; } ;
struct tegra_mc {int lock; } ;


 int BIT (int ) ;
 int mc_readl (struct tegra_mc*,int ) ;
 int mc_writel (struct tegra_mc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tegra_mc_block_dma_common(struct tegra_mc *mc,
         const struct tegra_mc_reset *rst)
{
 unsigned long flags;
 u32 value;

 spin_lock_irqsave(&mc->lock, flags);

 value = mc_readl(mc, rst->control) | BIT(rst->bit);
 mc_writel(mc, value, rst->control);

 spin_unlock_irqrestore(&mc->lock, flags);

 return 0;
}
