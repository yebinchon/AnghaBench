
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {int clk; TYPE_1__* band; int d11core; scalar_t__ noreset; int wlc; int unit; } ;
struct TYPE_2__ {int pi; } ;


 int OFF ;
 int bcma_core_disable (int ,int ) ;
 int brcms_b_core_phypll_ctl (struct brcms_hardware*,int) ;
 int brcms_dbg_info (int ,char*,int ) ;
 int brcms_deviceremoved (int ) ;
 int wlc_phy_anacore (int ,int ) ;
 int wlc_phy_hw_clk_state_upd (int ,int) ;
 int wlc_phy_switch_radio (int ,int ) ;

__attribute__((used)) static void brcms_c_coredisable(struct brcms_hardware *wlc_hw)
{
 bool dev_gone;

 brcms_dbg_info(wlc_hw->d11core, "wl%d: disable core\n", wlc_hw->unit);

 dev_gone = brcms_deviceremoved(wlc_hw->wlc);

 if (dev_gone)
  return;

 if (wlc_hw->noreset)
  return;


 wlc_phy_switch_radio(wlc_hw->band->pi, OFF);


 wlc_phy_anacore(wlc_hw->band->pi, OFF);


 brcms_b_core_phypll_ctl(wlc_hw, 0);

 wlc_hw->clk = 0;
 bcma_core_disable(wlc_hw->d11core, 0);
 wlc_phy_hw_clk_state_upd(wlc_hw->band->pi, 0);
}
