
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int extra_caps; int num_slots; int reg_pm_ctrl3; int ms_pull_ctl_disable_tbl; int ms_pull_ctl_enable_tbl; int sd_pull_ctl_disable_tbl; int sd_pull_ctl_enable_tbl; int ic_version; void* rx_initial_phase; void* tx_initial_phase; int aspm_en; void* sd30_drive_sel_3v3; void* sd30_drive_sel_1v8; int card_drive_sel; scalar_t__ flags; int * ops; } ;


 int ASPM_L1_EN ;
 void* CFG_DRIVER_TYPE_B ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 int PM_CTRL3 ;
 int RTSX_CARD_DRIVE_DEFAULT ;
 void* SET_CLOCK_PHASE (int,int,int) ;
 int rts5227_get_ic_version (struct rtsx_pcr*) ;
 int rts5227_ms_pull_ctl_disable_tbl ;
 int rts5227_ms_pull_ctl_enable_tbl ;
 int rts5227_pcr_ops ;
 int rts5227_sd_pull_ctl_disable_tbl ;
 int rts5227_sd_pull_ctl_enable_tbl ;

void rts5227_init_params(struct rtsx_pcr *pcr)
{
 pcr->extra_caps = EXTRA_CAPS_SD_SDR50 | EXTRA_CAPS_SD_SDR104;
 pcr->num_slots = 2;
 pcr->ops = &rts5227_pcr_ops;

 pcr->flags = 0;
 pcr->card_drive_sel = RTSX_CARD_DRIVE_DEFAULT;
 pcr->sd30_drive_sel_1v8 = CFG_DRIVER_TYPE_B;
 pcr->sd30_drive_sel_3v3 = CFG_DRIVER_TYPE_B;
 pcr->aspm_en = ASPM_L1_EN;
 pcr->tx_initial_phase = SET_CLOCK_PHASE(27, 27, 15);
 pcr->rx_initial_phase = SET_CLOCK_PHASE(30, 7, 7);

 pcr->ic_version = rts5227_get_ic_version(pcr);
 pcr->sd_pull_ctl_enable_tbl = rts5227_sd_pull_ctl_enable_tbl;
 pcr->sd_pull_ctl_disable_tbl = rts5227_sd_pull_ctl_disable_tbl;
 pcr->ms_pull_ctl_enable_tbl = rts5227_ms_pull_ctl_enable_tbl;
 pcr->ms_pull_ctl_disable_tbl = rts5227_ms_pull_ctl_disable_tbl;

 pcr->reg_pm_ctrl3 = PM_CTRL3;
}
