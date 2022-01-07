
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_cr_option {int dev_flags; int ltr_en; int ltr_l1off_snooze_sspwrgate; int ltr_l1off_sspwrgate; int l1_snooze_delay; int dev_aspm_mode; int ltr_l1off_latency; int ltr_idle_latency; int ltr_active_latency; } ;
struct rtsx_pcr {int extra_caps; int num_slots; int reg_pm_ctrl3; int ms_pull_ctl_disable_tbl; int ms_pull_ctl_enable_tbl; int sd_pull_ctl_disable_tbl; int sd_pull_ctl_enable_tbl; int ic_version; void* rx_initial_phase; void* tx_initial_phase; int aspm_en; void* sd30_drive_sel_3v3; void* sd30_drive_sel_1v8; int card_drive_sel; scalar_t__ flags; int * ops; struct rtsx_cr_option option; } ;


 int ASPM_L1_EN ;
 void* CFG_DRIVER_TYPE_B ;
 int DEV_ASPM_DYNAMIC ;
 int EXTRA_CAPS_SD_SDR104 ;
 int EXTRA_CAPS_SD_SDR50 ;
 int L1_SNOOZE_DELAY_DEF ;
 int LTR_ACTIVE_LATENCY_DEF ;
 int LTR_IDLE_LATENCY_DEF ;
 int LTR_L1OFF_LATENCY_DEF ;
 int LTR_L1OFF_SNOOZE_SSPWRGATE_5249_DEF ;
 int LTR_L1OFF_SSPWRGATE_5249_DEF ;
 int LTR_L1SS_PWR_GATE_CHECK_CARD_EN ;
 int LTR_L1SS_PWR_GATE_EN ;
 int PM_CTRL3 ;
 int RTSX_CARD_DRIVE_DEFAULT ;
 void* SET_CLOCK_PHASE (int,int,int) ;
 int rts5249_get_ic_version (struct rtsx_pcr*) ;
 int rts5249_ms_pull_ctl_disable_tbl ;
 int rts5249_ms_pull_ctl_enable_tbl ;
 int rts5249_pcr_ops ;
 int rts5249_sd_pull_ctl_disable_tbl ;
 int rts5249_sd_pull_ctl_enable_tbl ;

void rts5249_init_params(struct rtsx_pcr *pcr)
{
 struct rtsx_cr_option *option = &(pcr->option);

 pcr->extra_caps = EXTRA_CAPS_SD_SDR50 | EXTRA_CAPS_SD_SDR104;
 pcr->num_slots = 2;
 pcr->ops = &rts5249_pcr_ops;

 pcr->flags = 0;
 pcr->card_drive_sel = RTSX_CARD_DRIVE_DEFAULT;
 pcr->sd30_drive_sel_1v8 = CFG_DRIVER_TYPE_B;
 pcr->sd30_drive_sel_3v3 = CFG_DRIVER_TYPE_B;
 pcr->aspm_en = ASPM_L1_EN;
 pcr->tx_initial_phase = SET_CLOCK_PHASE(1, 29, 16);
 pcr->rx_initial_phase = SET_CLOCK_PHASE(24, 6, 5);

 pcr->ic_version = rts5249_get_ic_version(pcr);
 pcr->sd_pull_ctl_enable_tbl = rts5249_sd_pull_ctl_enable_tbl;
 pcr->sd_pull_ctl_disable_tbl = rts5249_sd_pull_ctl_disable_tbl;
 pcr->ms_pull_ctl_enable_tbl = rts5249_ms_pull_ctl_enable_tbl;
 pcr->ms_pull_ctl_disable_tbl = rts5249_ms_pull_ctl_disable_tbl;

 pcr->reg_pm_ctrl3 = PM_CTRL3;

 option->dev_flags = (LTR_L1SS_PWR_GATE_CHECK_CARD_EN
    | LTR_L1SS_PWR_GATE_EN);
 option->ltr_en = 1;


 option->ltr_active_latency = LTR_ACTIVE_LATENCY_DEF;
 option->ltr_idle_latency = LTR_IDLE_LATENCY_DEF;
 option->ltr_l1off_latency = LTR_L1OFF_LATENCY_DEF;
 option->dev_aspm_mode = DEV_ASPM_DYNAMIC;
 option->l1_snooze_delay = L1_SNOOZE_DELAY_DEF;
 option->ltr_l1off_sspwrgate = LTR_L1OFF_SSPWRGATE_5249_DEF;
 option->ltr_l1off_snooze_sspwrgate =
  LTR_L1OFF_SNOOZE_SSPWRGATE_5249_DEF;
}
