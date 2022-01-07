
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct brcms_hardware {TYPE_1__* band; int d11core; int unit; } ;
struct brcms_c_info {int wl; struct brcms_hardware* hw; } ;
struct TYPE_2__ {int pi; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int OFF ;
 int WARN_ON (int) ;
 int bcma_read32 (int ,int ) ;
 int brcms_b_core_phy_clk (struct brcms_hardware*,int ) ;
 int brcms_c_setxband (struct brcms_hardware*,int ) ;
 int brcms_dbg_mac80211 (int ,char*,int ) ;
 int brcms_intrsoff (int ) ;
 int maccontrol ;
 int wlc_phy_switch_radio (int ,int ) ;

__attribute__((used)) static u32 brcms_c_setband_inact(struct brcms_c_info *wlc, uint bandunit)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 u32 macintmask;
 u32 macctrl;

 brcms_dbg_mac80211(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);
 macctrl = bcma_read32(wlc_hw->d11core,
         D11REGOFFS(maccontrol));
 WARN_ON((macctrl & MCTL_EN_MAC) != 0);


 macintmask = brcms_intrsoff(wlc->wl);


 wlc_phy_switch_radio(wlc_hw->band->pi, OFF);

 brcms_b_core_phy_clk(wlc_hw, OFF);

 brcms_c_setxband(wlc_hw, bandunit);

 return macintmask;
}
