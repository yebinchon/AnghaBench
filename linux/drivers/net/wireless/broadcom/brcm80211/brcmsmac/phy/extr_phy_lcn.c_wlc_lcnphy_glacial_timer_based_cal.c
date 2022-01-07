
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy_lcnphy {int lcnphy_current_index; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int phy_forcecal; TYPE_1__* sh; int phy_lastcal; int d11core; TYPE_2__ u; } ;
typedef int s8 ;
struct TYPE_3__ {int physhim; int now; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_lcnphy_deaf_mode (struct brcms_phy*,int) ;
 int wlc_lcnphy_get_tx_pwr_ctrl (struct brcms_phy*) ;
 int wlc_lcnphy_set_tx_pwr_by_index (struct brcms_phy*,int ) ;
 int wlc_lcnphy_set_tx_pwr_ctrl (struct brcms_phy*,int ) ;
 int wlc_lcnphy_txpwrtbl_iqlo_cal (struct brcms_phy*) ;

__attribute__((used)) static void wlc_lcnphy_glacial_timer_based_cal(struct brcms_phy *pi)
{
 bool suspend;
 s8 index;
 u16 SAVE_pwrctrl = wlc_lcnphy_get_tx_pwr_ctrl(pi);
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
 suspend = (0 == (bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) &
    MCTL_EN_MAC));
 if (!suspend)
  wlapi_suspend_mac_and_wait(pi->sh->physhim);
 wlc_lcnphy_deaf_mode(pi, 1);
 pi->phy_lastcal = pi->sh->now;
 pi->phy_forcecal = 0;
 index = pi_lcn->lcnphy_current_index;

 wlc_lcnphy_txpwrtbl_iqlo_cal(pi);

 wlc_lcnphy_set_tx_pwr_by_index(pi, index);
 wlc_lcnphy_set_tx_pwr_ctrl(pi, SAVE_pwrctrl);
 wlc_lcnphy_deaf_mode(pi, 0);
 if (!suspend)
  wlapi_enable_mac(pi->sh->physhim);

}
