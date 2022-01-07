
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCMU_DPI_CLOCK_SETTING ;
 int PRCMU_DSI_CLOCK_SETTING ;
 int PRCMU_DSI_LP_CLOCK_SETTING ;
 scalar_t__ PRCM_HDMICLK_MGT ;
 scalar_t__ PRCM_LCDCLK_MGT ;
 scalar_t__ PRCM_SEM ;
 int PRCM_SEM_PRCM_SEM ;
 scalar_t__ PRCM_TVCLK_MGT ;
 int clk_mgt_lock ;
 int cpu_relax () ;
 scalar_t__ prcmu_base ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

int db8500_prcmu_set_display_clocks(void)
{
 unsigned long flags;

 spin_lock_irqsave(&clk_mgt_lock, flags);


 while ((readl(PRCM_SEM) & PRCM_SEM_PRCM_SEM) != 0)
  cpu_relax();

 writel(PRCMU_DSI_CLOCK_SETTING, prcmu_base + PRCM_HDMICLK_MGT);
 writel(PRCMU_DSI_LP_CLOCK_SETTING, prcmu_base + PRCM_TVCLK_MGT);
 writel(PRCMU_DPI_CLOCK_SETTING, prcmu_base + PRCM_LCDCLK_MGT);


 writel(0, PRCM_SEM);

 spin_unlock_irqrestore(&clk_mgt_lock, flags);

 return 0;
}
