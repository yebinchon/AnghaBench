
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {scalar_t__ base; } ;
struct mmc_host {int dummy; } ;


 int BIT (int) ;
 scalar_t__ MSDC_PS ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int msdc_card_busy(struct mmc_host *mmc)
{
 struct msdc_host *host = mmc_priv(mmc);
 u32 status = readl(host->base + MSDC_PS);


 return !(status & BIT(16));
}
