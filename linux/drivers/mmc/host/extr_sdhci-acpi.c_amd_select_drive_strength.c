
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int MMC_SET_DRIVER_TYPE_A ;

__attribute__((used)) static int amd_select_drive_strength(struct mmc_card *card,
         unsigned int max_dtr, int host_drv,
         int card_drv, int *drv_type)
{
 return MMC_SET_DRIVER_TYPE_A;
}
