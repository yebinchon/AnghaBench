
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int timing; int clock; } ;
struct meson_host {int dummy; } ;




 int meson_mmc_clk_set (struct meson_host*,int ,int) ;

__attribute__((used)) static int meson_mmc_prepare_ios_clock(struct meson_host *host,
           struct mmc_ios *ios)
{
 bool ddr;

 switch (ios->timing) {
 case 129:
 case 128:
  ddr = 1;
  break;

 default:
  ddr = 0;
  break;
 }

 return meson_mmc_clk_set(host, ios->clock, ddr);
}
