
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int mmc; int base; TYPE_1__* pdata; scalar_t__ power_mode; } ;
struct mmc_ios {int vdd; scalar_t__ power_mode; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int controller_flags; } ;


 int DUAL_VOLT_OCR_BIT ;
 int HCTL ;



 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_SUPPORTS_DUAL_VOLT ;
 int SDVSDET ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int omap_hsmmc_set_bus_mode (struct omap_hsmmc_host*) ;
 int omap_hsmmc_set_bus_width (struct omap_hsmmc_host*) ;
 int omap_hsmmc_set_clock (struct omap_hsmmc_host*) ;
 int omap_hsmmc_set_power (struct omap_hsmmc_host*,int) ;
 scalar_t__ omap_hsmmc_switch_opcond (struct omap_hsmmc_host*,int ) ;
 int send_init_stream (struct omap_hsmmc_host*) ;

__attribute__((used)) static void omap_hsmmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 int do_send_init_stream = 0;

 if (ios->power_mode != host->power_mode) {
  switch (ios->power_mode) {
  case 130:
   omap_hsmmc_set_power(host, 0);
   break;
  case 128:
   omap_hsmmc_set_power(host, 1);
   break;
  case 129:
   do_send_init_stream = 1;
   break;
  }
  host->power_mode = ios->power_mode;
 }



 omap_hsmmc_set_bus_width(host);

 if (host->pdata->controller_flags & OMAP_HSMMC_SUPPORTS_DUAL_VOLT) {



  if ((OMAP_HSMMC_READ(host->base, HCTL) & SDVSDET) &&
   (ios->vdd == DUAL_VOLT_OCR_BIT)) {






   if (omap_hsmmc_switch_opcond(host, ios->vdd) != 0)
    dev_dbg(mmc_dev(host->mmc),
      "Switch operation failed\n");
  }
 }

 omap_hsmmc_set_clock(host);

 if (do_send_init_stream)
  send_init_stream(host);

 omap_hsmmc_set_bus_mode(host);
}
