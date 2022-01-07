
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ eee_active; } ;
struct TYPE_3__ {scalar_t__ autoneg; scalar_t__ active_duplex; scalar_t__ active_speed; } ;
struct tg3 {int phy_flags; int setlpicnt; TYPE_2__ eee; TYPE_1__ link_config; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int MII_TG3_DSP_TAP26 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int TG3_CPMU_EEEMD_LPI_ENABLE ;
 int TG3_CPMU_EEE_CTRL ;
 int TG3_CPMU_EEE_CTRL_EXIT_16_5_US ;
 int TG3_CPMU_EEE_CTRL_EXIT_36_US ;
 int TG3_CPMU_EEE_MODE ;
 int TG3_PHYFLG_EEE_CAP ;
 int tg3_eee_pull_config (struct tg3*,int *) ;
 int tg3_phy_toggle_auxctl_smdsp (struct tg3*,int) ;
 int tg3_phydsp_write (struct tg3*,int ,int) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_phy_eee_adjust(struct tg3 *tp, bool current_link_up)
{
 u32 val;

 if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP))
  return;

 tp->setlpicnt = 0;

 if (tp->link_config.autoneg == AUTONEG_ENABLE &&
     current_link_up &&
     tp->link_config.active_duplex == DUPLEX_FULL &&
     (tp->link_config.active_speed == SPEED_100 ||
      tp->link_config.active_speed == SPEED_1000)) {
  u32 eeectl;

  if (tp->link_config.active_speed == SPEED_1000)
   eeectl = TG3_CPMU_EEE_CTRL_EXIT_16_5_US;
  else
   eeectl = TG3_CPMU_EEE_CTRL_EXIT_36_US;

  tw32(TG3_CPMU_EEE_CTRL, eeectl);

  tg3_eee_pull_config(tp, ((void*)0));
  if (tp->eee.eee_active)
   tp->setlpicnt = 2;
 }

 if (!tp->setlpicnt) {
  if (current_link_up &&
     !tg3_phy_toggle_auxctl_smdsp(tp, 1)) {
   tg3_phydsp_write(tp, MII_TG3_DSP_TAP26, 0x0000);
   tg3_phy_toggle_auxctl_smdsp(tp, 0);
  }

  val = tr32(TG3_CPMU_EEE_MODE);
  tw32(TG3_CPMU_EEE_MODE, val & ~TG3_CPMU_EEEMD_LPI_ENABLE);
 }
}
