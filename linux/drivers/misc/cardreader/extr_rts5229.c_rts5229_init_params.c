
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int extra_caps; int num_slots; scalar_t__ ic_version; int ms_pull_ctl_disable_tbl; int ms_pull_ctl_enable_tbl; int sd_pull_ctl_disable_tbl; int sd_pull_ctl_enable_tbl; void* rx_initial_phase; void* tx_initial_phase; int aspm_en; int sd30_drive_sel_3v3; int sd30_drive_sel_1v8; int card_drive_sel; scalar_t__ flags; int * ops; } ;


 int ASPM_L1_EN ;
 int DRIVER_TYPE_B ;
 int DRIVER_TYPE_D ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 scalar_t__ IC_VER_C ;
 int RTSX_CARD_DRIVE_DEFAULT ;
 void* SET_CLOCK_PHASE (int,int,int) ;
 scalar_t__ rts5229_get_ic_version (struct rtsx_pcr*) ;
 int rts5229_ms_pull_ctl_disable_tbl ;
 int rts5229_ms_pull_ctl_enable_tbl ;
 int rts5229_pcr_ops ;
 int rts5229_sd_pull_ctl_disable_tbl1 ;
 int rts5229_sd_pull_ctl_disable_tbl2 ;
 int rts5229_sd_pull_ctl_enable_tbl1 ;
 int rts5229_sd_pull_ctl_enable_tbl2 ;

void rts5229_init_params(struct rtsx_pcr *pcr)
{
 pcr->extra_caps = EXTRA_CAPS_SD_SDR50 | EXTRA_CAPS_SD_SDR104;
 pcr->num_slots = 2;
 pcr->ops = &rts5229_pcr_ops;

 pcr->flags = 0;
 pcr->card_drive_sel = RTSX_CARD_DRIVE_DEFAULT;
 pcr->sd30_drive_sel_1v8 = DRIVER_TYPE_B;
 pcr->sd30_drive_sel_3v3 = DRIVER_TYPE_D;
 pcr->aspm_en = ASPM_L1_EN;
 pcr->tx_initial_phase = SET_CLOCK_PHASE(27, 27, 15);
 pcr->rx_initial_phase = SET_CLOCK_PHASE(30, 6, 6);

 pcr->ic_version = rts5229_get_ic_version(pcr);
 if (pcr->ic_version == IC_VER_C) {
  pcr->sd_pull_ctl_enable_tbl = rts5229_sd_pull_ctl_enable_tbl2;
  pcr->sd_pull_ctl_disable_tbl = rts5229_sd_pull_ctl_disable_tbl2;
 } else {
  pcr->sd_pull_ctl_enable_tbl = rts5229_sd_pull_ctl_enable_tbl1;
  pcr->sd_pull_ctl_disable_tbl = rts5229_sd_pull_ctl_disable_tbl1;
 }
 pcr->ms_pull_ctl_enable_tbl = rts5229_ms_pull_ctl_enable_tbl;
 pcr->ms_pull_ctl_disable_tbl = rts5229_ms_pull_ctl_disable_tbl;
}
