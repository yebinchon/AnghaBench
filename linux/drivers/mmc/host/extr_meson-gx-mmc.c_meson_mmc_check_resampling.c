
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int timing; } ;
struct meson_host {int dummy; } ;






 int meson_mmc_disable_resampling (struct meson_host*) ;

__attribute__((used)) static void meson_mmc_check_resampling(struct meson_host *host,
           struct mmc_ios *ios)
{
 switch (ios->timing) {
 case 131:
 case 129:
 case 128:
 case 130:
  meson_mmc_disable_resampling(host);
  break;
 }
}
