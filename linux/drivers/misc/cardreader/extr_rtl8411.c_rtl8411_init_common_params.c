
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int extra_caps; int num_slots; int ic_version; void* rx_initial_phase; void* tx_initial_phase; int aspm_en; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int card_drive_sel; scalar_t__ flags; } ;


 int ASPM_L1_EN ;
 int DRIVER_TYPE_B ;
 int DRIVER_TYPE_D ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 int RTL8411_CARD_DRIVE_DEFAULT ;
 void* SET_CLOCK_PHASE (int,int,int) ;
 int rtl8411_get_ic_version (struct rtsx_pcr*) ;

__attribute__((used)) static void rtl8411_init_common_params(struct rtsx_pcr *pcr)
{
 pcr->extra_caps = EXTRA_CAPS_SD_SDR50 | EXTRA_CAPS_SD_SDR104;
 pcr->num_slots = 2;
 pcr->flags = 0;
 pcr->card_drive_sel = RTL8411_CARD_DRIVE_DEFAULT;
 pcr->sd30_drive_sel_1v8 = DRIVER_TYPE_B;
 pcr->sd30_drive_sel_3v3 = DRIVER_TYPE_D;
 pcr->aspm_en = ASPM_L1_EN;
 pcr->tx_initial_phase = SET_CLOCK_PHASE(23, 7, 14);
 pcr->rx_initial_phase = SET_CLOCK_PHASE(4, 3, 10);
 pcr->ic_version = rtl8411_get_ic_version(pcr);
}
