
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCMU_DSI_PLLOUT_SEL_SETTING ;
 int PRCMU_DSI_RESET_SW ;
 int PRCMU_ENABLE_ESCAPE_CLOCK_DIV ;
 int PRCMU_ENABLE_PLLDSI ;
 int PRCMU_PLLDSI_FREQ_SETTING ;
 int PRCMU_PLLDSI_LOCKP_LOCKED ;
 int PRCMU_RESET_DSIPLL ;
 int PRCMU_UNCLAMP_DSIPLL ;
 int PRCM_APE_RESETN_CLR ;
 int PRCM_APE_RESETN_SET ;
 int PRCM_DSITVCLK_DIV ;
 int PRCM_DSI_PLLOUT_SEL ;
 int PRCM_DSI_SW_RESET ;
 int PRCM_MMIP_LS_CLAMP_CLR ;
 int PRCM_PLLDSI_ENABLE ;
 int PRCM_PLLDSI_FREQ ;
 int PRCM_PLLDSI_LOCKP ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int ,int ) ;

int db8500_prcmu_enable_dsipll(void)
{
 int i;


 writel(PRCMU_RESET_DSIPLL, PRCM_APE_RESETN_CLR);

 writel(PRCMU_UNCLAMP_DSIPLL, PRCM_MMIP_LS_CLAMP_CLR);


 writel(PRCMU_PLLDSI_FREQ_SETTING, PRCM_PLLDSI_FREQ);
 writel(PRCMU_DSI_PLLOUT_SEL_SETTING, PRCM_DSI_PLLOUT_SEL);

 writel(PRCMU_ENABLE_ESCAPE_CLOCK_DIV, PRCM_DSITVCLK_DIV);


 writel(PRCMU_ENABLE_PLLDSI, PRCM_PLLDSI_ENABLE);

 writel(PRCMU_DSI_RESET_SW, PRCM_DSI_SW_RESET);
 for (i = 0; i < 10; i++) {
  if ((readl(PRCM_PLLDSI_LOCKP) & PRCMU_PLLDSI_LOCKP_LOCKED)
     == PRCMU_PLLDSI_LOCKP_LOCKED)
   break;
  udelay(100);
 }

 writel(PRCMU_RESET_DSIPLL, PRCM_APE_RESETN_SET);
 return 0;
}
