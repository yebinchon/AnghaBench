
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int sd3_curr_limit; } ;
struct mmc_card {scalar_t__ sd_bus_speed; int host; TYPE_1__ sw_caps; } ;


 int SD_MAX_CURRENT_200 ;
 int SD_MAX_CURRENT_400 ;
 int SD_MAX_CURRENT_600 ;
 int SD_MAX_CURRENT_800 ;
 int SD_SET_CURRENT_LIMIT_200 ;
 int SD_SET_CURRENT_LIMIT_400 ;
 int SD_SET_CURRENT_LIMIT_600 ;
 int SD_SET_CURRENT_LIMIT_800 ;
 int SD_SET_CURRENT_NO_CHANGE ;
 scalar_t__ UHS_DDR50_BUS_SPEED ;
 scalar_t__ UHS_SDR104_BUS_SPEED ;
 scalar_t__ UHS_SDR50_BUS_SPEED ;
 int mmc_hostname (int ) ;
 int mmc_sd_switch (struct mmc_card*,int,int,int,int*) ;
 int pr_warn (char*,int ) ;
 int sd_get_host_max_current (int ) ;

__attribute__((used)) static int sd_set_current_limit(struct mmc_card *card, u8 *status)
{
 int current_limit = SD_SET_CURRENT_NO_CHANGE;
 int err;
 u32 max_current;






 if ((card->sd_bus_speed != UHS_SDR50_BUS_SPEED) &&
     (card->sd_bus_speed != UHS_SDR104_BUS_SPEED) &&
     (card->sd_bus_speed != UHS_DDR50_BUS_SPEED))
  return 0;





 max_current = sd_get_host_max_current(card->host);
 if (max_current >= 800 &&
     card->sw_caps.sd3_curr_limit & SD_MAX_CURRENT_800)
  current_limit = SD_SET_CURRENT_LIMIT_800;
 else if (max_current >= 600 &&
   card->sw_caps.sd3_curr_limit & SD_MAX_CURRENT_600)
  current_limit = SD_SET_CURRENT_LIMIT_600;
 else if (max_current >= 400 &&
   card->sw_caps.sd3_curr_limit & SD_MAX_CURRENT_400)
  current_limit = SD_SET_CURRENT_LIMIT_400;
 else if (max_current >= 200 &&
   card->sw_caps.sd3_curr_limit & SD_MAX_CURRENT_200)
  current_limit = SD_SET_CURRENT_LIMIT_200;

 if (current_limit != SD_SET_CURRENT_NO_CHANGE) {
  err = mmc_sd_switch(card, 1, 3, current_limit, status);
  if (err)
   return err;

  if (((status[15] >> 4) & 0x0F) != current_limit)
   pr_warn("%s: Problem setting current limit!\n",
    mmc_hostname(card->host));

 }

 return 0;
}
