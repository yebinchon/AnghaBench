
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; TYPE_1__* ops; } ;
struct mmc_card {struct mmc_host* host; } ;
struct TYPE_2__ {int (* select_drive_strength ) (struct mmc_card*,unsigned int,int,int,int*) ;} ;


 int MMC_CAP_DRIVER_TYPE_A ;
 int MMC_CAP_DRIVER_TYPE_C ;
 int MMC_CAP_DRIVER_TYPE_D ;
 int SD_DRIVER_TYPE_A ;
 int SD_DRIVER_TYPE_B ;
 int SD_DRIVER_TYPE_C ;
 int SD_DRIVER_TYPE_D ;
 int stub1 (struct mmc_card*,unsigned int,int,int,int*) ;

int mmc_select_drive_strength(struct mmc_card *card, unsigned int max_dtr,
         int card_drv_type, int *drv_type)
{
 struct mmc_host *host = card->host;
 int host_drv_type = SD_DRIVER_TYPE_B;

 *drv_type = 0;

 if (!host->ops->select_drive_strength)
  return 0;


 if (host->caps & MMC_CAP_DRIVER_TYPE_A)
  host_drv_type |= SD_DRIVER_TYPE_A;

 if (host->caps & MMC_CAP_DRIVER_TYPE_C)
  host_drv_type |= SD_DRIVER_TYPE_C;

 if (host->caps & MMC_CAP_DRIVER_TYPE_D)
  host_drv_type |= SD_DRIVER_TYPE_D;







 return host->ops->select_drive_strength(card, max_dtr,
      host_drv_type,
      card_drv_type,
      drv_type);
}
