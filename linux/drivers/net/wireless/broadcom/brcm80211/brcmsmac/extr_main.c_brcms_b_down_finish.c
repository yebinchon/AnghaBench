
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint ;
struct brcms_hardware {int up; int sbclk; int clk; TYPE_5__* d11core; int noreset; TYPE_2__* wlc; TYPE_1__* band; } ;
struct TYPE_9__ {int bus; } ;
struct TYPE_8__ {int wl; } ;
struct TYPE_7__ {int pi; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int OFF ;
 scalar_t__ bcma_core_is_enabled (TYPE_5__*) ;
 int bcma_host_pci_down (int ) ;
 int bcma_read32 (TYPE_5__*,int ) ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int brcms_c_coredisable (struct brcms_hardware*) ;
 int brcms_c_flushqueues (TYPE_2__*) ;
 int brcms_c_suspend_mac_and_wait (TYPE_2__*) ;
 int brcms_deviceremoved (TYPE_2__*) ;
 scalar_t__ brcms_reset (int ) ;
 int maccontrol ;
 int wlc_phy_hw_clk_state_upd (int ,int) ;
 int wlc_phy_hw_state_upd (int ,int) ;

__attribute__((used)) static int brcms_b_down_finish(struct brcms_hardware *wlc_hw)
{
 uint callbacks = 0;
 bool dev_gone;

 if (!wlc_hw->up)
  return callbacks;

 wlc_hw->up = 0;
 wlc_phy_hw_state_upd(wlc_hw->band->pi, 0);

 dev_gone = brcms_deviceremoved(wlc_hw->wlc);

 if (dev_gone) {
  wlc_hw->sbclk = 0;
  wlc_hw->clk = 0;
  wlc_phy_hw_clk_state_upd(wlc_hw->band->pi, 0);


  brcms_c_flushqueues(wlc_hw->wlc);
 } else {


  if (bcma_core_is_enabled(wlc_hw->d11core)) {
   if (bcma_read32(wlc_hw->d11core,
     D11REGOFFS(maccontrol)) & MCTL_EN_MAC)
    brcms_c_suspend_mac_and_wait(wlc_hw->wlc);
   callbacks += brcms_reset(wlc_hw->wlc->wl);
   brcms_c_coredisable(wlc_hw);
  }


  if (!wlc_hw->noreset) {
   bcma_host_pci_down(wlc_hw->d11core->bus);
   brcms_b_xtal(wlc_hw, OFF);
  }
 }

 return callbacks;
}
