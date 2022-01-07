
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCMU_DISABLE_ESCAPE_CLOCK_DIV ;
 int PRCMU_DISABLE_PLLDSI ;
 int PRCM_DSITVCLK_DIV ;
 int PRCM_PLLDSI_ENABLE ;
 int writel (int ,int ) ;

int db8500_prcmu_disable_dsipll(void)
{

 writel(PRCMU_DISABLE_PLLDSI, PRCM_PLLDSI_ENABLE);

 writel(PRCMU_DISABLE_ESCAPE_CLOCK_DIV, PRCM_DSITVCLK_DIV);
 return 0;
}
