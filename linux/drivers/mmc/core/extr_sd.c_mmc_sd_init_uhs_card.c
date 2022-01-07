
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int cmdclass; } ;
struct mmc_card {TYPE_3__* host; TYPE_1__ csd; } ;
struct TYPE_7__ {scalar_t__ timing; } ;
struct TYPE_8__ {TYPE_2__ ios; } ;


 int CCC_SWITCH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 scalar_t__ MMC_TIMING_UHS_SDR104 ;
 scalar_t__ MMC_TIMING_UHS_SDR50 ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int mmc_app_set_bus_width (struct mmc_card*,int ) ;
 int mmc_execute_tuning (struct mmc_card*) ;
 int mmc_host_is_spi (TYPE_3__*) ;
 int mmc_hostname (TYPE_3__*) ;
 int mmc_set_bus_width (TYPE_3__*,int ) ;
 int pr_warn (char*,int ) ;
 int sd_select_driver_type (struct mmc_card*,int *) ;
 int sd_set_bus_speed_mode (struct mmc_card*,int *) ;
 int sd_set_current_limit (struct mmc_card*,int *) ;
 int sd_update_bus_speed_mode (struct mmc_card*) ;

__attribute__((used)) static int mmc_sd_init_uhs_card(struct mmc_card *card)
{
 int err;
 u8 *status;

 if (!(card->csd.cmdclass & CCC_SWITCH))
  return 0;

 status = kmalloc(64, GFP_KERNEL);
 if (!status)
  return -ENOMEM;


 err = mmc_app_set_bus_width(card, MMC_BUS_WIDTH_4);
 if (err)
  goto out;

 mmc_set_bus_width(card->host, MMC_BUS_WIDTH_4);





 sd_update_bus_speed_mode(card);


 err = sd_select_driver_type(card, status);
 if (err)
  goto out;


 err = sd_set_current_limit(card, status);
 if (err)
  goto out;


 err = sd_set_bus_speed_mode(card, status);
 if (err)
  goto out;





 if (!mmc_host_is_spi(card->host) &&
  (card->host->ios.timing == MMC_TIMING_UHS_SDR50 ||
   card->host->ios.timing == MMC_TIMING_UHS_DDR50 ||
   card->host->ios.timing == MMC_TIMING_UHS_SDR104)) {
  err = mmc_execute_tuning(card);
  if (err && card->host->ios.timing == MMC_TIMING_UHS_DDR50) {
   pr_warn("%s: ddr50 tuning failed\n",
    mmc_hostname(card->host));
   err = 0;
  }
 }

out:
 kfree(status);

 return err;
}
