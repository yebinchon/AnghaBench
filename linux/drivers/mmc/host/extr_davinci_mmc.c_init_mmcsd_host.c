
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {scalar_t__ base; } ;


 scalar_t__ DAVINCI_MMCCLK ;
 scalar_t__ DAVINCI_MMCTOD ;
 scalar_t__ DAVINCI_MMCTOR ;
 int MMCCLK_CLKEN ;
 int mmc_davinci_reset_ctrl (struct mmc_davinci_host*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void init_mmcsd_host(struct mmc_davinci_host *host)
{

 mmc_davinci_reset_ctrl(host, 1);

 writel(0, host->base + DAVINCI_MMCCLK);
 writel(MMCCLK_CLKEN, host->base + DAVINCI_MMCCLK);

 writel(0x1FFF, host->base + DAVINCI_MMCTOR);
 writel(0xFFFF, host->base + DAVINCI_MMCTOD);

 mmc_davinci_reset_ctrl(host, 0);
}
