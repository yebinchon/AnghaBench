
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int pllsw; scalar_t__ offset; } ;


 int PRCM_CLK_MGT_CLKEN ;
 int PRCM_CLK_MGT_CLKPLLSW_MASK ;
 scalar_t__ PRCM_SEM ;
 int PRCM_SEM_PRCM_SEM ;
 TYPE_1__* clk_mgt ;
 int clk_mgt_lock ;
 int cpu_relax () ;
 scalar_t__ prcmu_base ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int request_clock(u8 clock, bool enable)
{
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&clk_mgt_lock, flags);


 while ((readl(PRCM_SEM) & PRCM_SEM_PRCM_SEM) != 0)
  cpu_relax();

 val = readl(prcmu_base + clk_mgt[clock].offset);
 if (enable) {
  val |= (PRCM_CLK_MGT_CLKEN | clk_mgt[clock].pllsw);
 } else {
  clk_mgt[clock].pllsw = (val & PRCM_CLK_MGT_CLKPLLSW_MASK);
  val &= ~(PRCM_CLK_MGT_CLKEN | PRCM_CLK_MGT_CLKPLLSW_MASK);
 }
 writel(val, prcmu_base + clk_mgt[clock].offset);


 writel(0, PRCM_SEM);

 spin_unlock_irqrestore(&clk_mgt_lock, flags);

 return 0;
}
