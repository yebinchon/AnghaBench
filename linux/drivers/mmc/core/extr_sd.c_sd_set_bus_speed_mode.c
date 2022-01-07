
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int uhs_max_dtr; } ;
struct mmc_card {int sd_bus_speed; TYPE_1__ sw_caps; int host; } ;


 unsigned int MMC_TIMING_UHS_DDR50 ;
 unsigned int MMC_TIMING_UHS_SDR104 ;
 unsigned int MMC_TIMING_UHS_SDR12 ;
 unsigned int MMC_TIMING_UHS_SDR25 ;
 unsigned int MMC_TIMING_UHS_SDR50 ;

 int UHS_DDR50_MAX_DTR ;

 int UHS_SDR104_MAX_DTR ;

 int UHS_SDR12_MAX_DTR ;

 int UHS_SDR25_MAX_DTR ;

 int UHS_SDR50_MAX_DTR ;
 int mmc_hostname (int ) ;
 int mmc_sd_switch (struct mmc_card*,int,int ,int,int*) ;
 int mmc_set_clock (int ,int ) ;
 int mmc_set_timing (int ,unsigned int) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int sd_set_bus_speed_mode(struct mmc_card *card, u8 *status)
{
 int err;
 unsigned int timing = 0;

 switch (card->sd_bus_speed) {
 case 131:
  timing = MMC_TIMING_UHS_SDR104;
  card->sw_caps.uhs_max_dtr = UHS_SDR104_MAX_DTR;
  break;
 case 132:
  timing = MMC_TIMING_UHS_DDR50;
  card->sw_caps.uhs_max_dtr = UHS_DDR50_MAX_DTR;
  break;
 case 128:
  timing = MMC_TIMING_UHS_SDR50;
  card->sw_caps.uhs_max_dtr = UHS_SDR50_MAX_DTR;
  break;
 case 129:
  timing = MMC_TIMING_UHS_SDR25;
  card->sw_caps.uhs_max_dtr = UHS_SDR25_MAX_DTR;
  break;
 case 130:
  timing = MMC_TIMING_UHS_SDR12;
  card->sw_caps.uhs_max_dtr = UHS_SDR12_MAX_DTR;
  break;
 default:
  return 0;
 }

 err = mmc_sd_switch(card, 1, 0, card->sd_bus_speed, status);
 if (err)
  return err;

 if ((status[16] & 0xF) != card->sd_bus_speed)
  pr_warn("%s: Problem setting bus speed mode!\n",
   mmc_hostname(card->host));
 else {
  mmc_set_timing(card->host, timing);
  mmc_set_clock(card->host, card->sw_caps.uhs_max_dtr);
 }

 return 0;
}
