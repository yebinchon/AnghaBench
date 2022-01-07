
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_davinci_host {scalar_t__ base; } ;


 scalar_t__ DAVINCI_MMCCTL ;
 int MMCCTL_CMDRST ;
 int MMCCTL_DATRST ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void mmc_davinci_reset_ctrl(struct mmc_davinci_host *host,
        int val)
{
 u32 temp;

 temp = readl(host->base + DAVINCI_MMCCTL);
 if (val)
  temp |= MMCCTL_CMDRST | MMCCTL_DATRST;
 else
  temp &= ~(MMCCTL_CMDRST | MMCCTL_DATRST);

 writel(temp, host->base + DAVINCI_MMCCTL);
 udelay(10);
}
