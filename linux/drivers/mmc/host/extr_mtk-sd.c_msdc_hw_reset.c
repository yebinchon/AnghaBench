
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {scalar_t__ base; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ EMMC_IOCON ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int sdr_clr_bits (scalar_t__,int) ;
 int sdr_set_bits (scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void msdc_hw_reset(struct mmc_host *mmc)
{
 struct msdc_host *host = mmc_priv(mmc);

 sdr_set_bits(host->base + EMMC_IOCON, 1);
 udelay(10);
 sdr_clr_bits(host->base + EMMC_IOCON, 1);
}
