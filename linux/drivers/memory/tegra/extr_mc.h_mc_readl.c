
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mc {scalar_t__ regs; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 mc_readl(struct tegra_mc *mc, unsigned long offset)
{
 return readl_relaxed(mc->regs + offset);
}
