
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mc {scalar_t__ regs; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void mc_writel(struct tegra_mc *mc, u32 value,
        unsigned long offset)
{
 writel_relaxed(value, mc->regs + offset);
}
