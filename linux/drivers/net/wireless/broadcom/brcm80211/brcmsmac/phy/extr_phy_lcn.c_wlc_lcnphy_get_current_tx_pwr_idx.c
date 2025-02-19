
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_lcnphy {scalar_t__ lcnphy_current_index; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef scalar_t__ s8 ;


 scalar_t__ txpwrctrl_off (struct brcms_phy*) ;
 int wlc_lcnphy_get_current_tx_pwr_idx_if_pwrctrl_on (struct brcms_phy*) ;
 scalar_t__ wlc_lcnphy_tssi_based_pwr_ctrl_enabled (struct brcms_phy*) ;

s8 wlc_lcnphy_get_current_tx_pwr_idx(struct brcms_phy *pi)
{
 s8 index;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 if (txpwrctrl_off(pi))
  index = pi_lcn->lcnphy_current_index;
 else if (wlc_lcnphy_tssi_based_pwr_ctrl_enabled(pi))
  index = (s8) (wlc_lcnphy_get_current_tx_pwr_idx_if_pwrctrl_on(
         pi) / 2);
 else
  index = pi_lcn->lcnphy_current_index;
 return index;
}
