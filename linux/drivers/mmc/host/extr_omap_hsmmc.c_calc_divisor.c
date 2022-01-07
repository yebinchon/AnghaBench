
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_hsmmc_host {int fclk; } ;
struct mmc_ios {scalar_t__ clock; } ;


 scalar_t__ CLKD_MAX ;
 scalar_t__ DIV_ROUND_UP (int ,scalar_t__) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static u16 calc_divisor(struct omap_hsmmc_host *host, struct mmc_ios *ios)
{
 u16 dsor = 0;

 if (ios->clock) {
  dsor = DIV_ROUND_UP(clk_get_rate(host->fclk), ios->clock);
  if (dsor > CLKD_MAX)
   dsor = CLKD_MAX;
 }

 return dsor;
}
