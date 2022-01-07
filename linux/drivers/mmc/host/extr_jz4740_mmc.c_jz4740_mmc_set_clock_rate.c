
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jz4740_mmc_host {scalar_t__ base; int clk; TYPE_1__* mmc; } ;
struct TYPE_2__ {int f_max; } ;


 scalar_t__ JZ_REG_MMC_CLKRT ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int jz4740_mmc_clock_disable (struct jz4740_mmc_host*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int jz4740_mmc_set_clock_rate(struct jz4740_mmc_host *host, int rate)
{
 int div = 0;
 int real_rate;

 jz4740_mmc_clock_disable(host);
 clk_set_rate(host->clk, host->mmc->f_max);

 real_rate = clk_get_rate(host->clk);

 while (real_rate > rate && div < 7) {
  ++div;
  real_rate >>= 1;
 }

 writew(div, host->base + JZ_REG_MMC_CLKRT);
 return real_rate;
}
