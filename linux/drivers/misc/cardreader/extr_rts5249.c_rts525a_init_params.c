
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ocp_en; int sd_800mA_ocp_thd; int ltr_l1off_snooze_sspwrgate; int ltr_l1off_sspwrgate; } ;
struct TYPE_3__ {int ocp_glitch; int interrupt_en; } ;
struct rtsx_pcr {TYPE_2__ option; TYPE_1__ hw_param; int * ops; int reg_pm_ctrl3; } ;


 int LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF ;
 int LTR_L1OFF_SSPWRGATE_5250_DEF ;
 int RTS524A_PM_CTRL3 ;
 int RTS525A_OCP_THD_800 ;
 int SD_OCP_GLITCH_10M ;
 int SD_OC_INT_EN ;
 int rts5249_init_params (struct rtsx_pcr*) ;
 int rts525a_pcr_ops ;

void rts525a_init_params(struct rtsx_pcr *pcr)
{
 rts5249_init_params(pcr);
 pcr->option.ltr_l1off_sspwrgate = LTR_L1OFF_SSPWRGATE_5250_DEF;
 pcr->option.ltr_l1off_snooze_sspwrgate =
  LTR_L1OFF_SNOOZE_SSPWRGATE_5250_DEF;

 pcr->reg_pm_ctrl3 = RTS524A_PM_CTRL3;
 pcr->ops = &rts525a_pcr_ops;

 pcr->option.ocp_en = 1;
 if (pcr->option.ocp_en)
  pcr->hw_param.interrupt_en |= SD_OC_INT_EN;
 pcr->hw_param.ocp_glitch = SD_OCP_GLITCH_10M;
 pcr->option.sd_800mA_ocp_thd = RTS525A_OCP_THD_800;
}
