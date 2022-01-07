
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sd3_bus_mode; } ;
struct mmc_card {TYPE_1__ sw_caps; } ;


 int SD_MODE_UHS_DDR50 ;
 int SD_MODE_UHS_SDR104 ;
 int SD_MODE_UHS_SDR50 ;

__attribute__((used)) static bool mmc_sd_card_using_v18(struct mmc_card *card)
{






 return card->sw_caps.sd3_bus_mode &
        (SD_MODE_UHS_SDR50 | SD_MODE_UHS_SDR104 | SD_MODE_UHS_DDR50);
}
