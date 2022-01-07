
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_hardware {int forcefastclk; int mac_suspend_depth; int wake_override; TYPE_1__* band; struct brcms_c_info* wlc; } ;
struct brcms_c_info {int wl; } ;
struct TYPE_2__ {int pi; } ;


 int BCMA_CLKMODE_DYNAMIC ;
 int BCMA_CLKMODE_FAST ;
 int BRCMS_WAKE_OVERRIDE_MACSUSPEND ;
 int brcms_b_bsinit (struct brcms_c_info*,int ) ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_b_coreinit (struct brcms_c_info*) ;
 int brcms_c_setxband (struct brcms_hardware*,int ) ;
 int brcms_intrsoff (int ) ;
 int brcms_intrsrestore (int ,int ) ;
 int chspec_bandunit (int ) ;
 int mboolset (int ,int ) ;
 int wlc_phy_cal_init (int ) ;
 int wlc_phy_chanspec_radio_set (int ,int ) ;

__attribute__((used)) static void brcms_b_init(struct brcms_hardware *wlc_hw, u16 chanspec)
{
 u32 macintmask;
 bool fastclk;
 struct brcms_c_info *wlc = wlc_hw->wlc;


 fastclk = wlc_hw->forcefastclk;
 if (!fastclk)
  brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_FAST);


 macintmask = brcms_intrsoff(wlc->wl);


 brcms_c_setxband(wlc_hw, chspec_bandunit(chanspec));
 wlc_phy_chanspec_radio_set(wlc_hw->band->pi, chanspec);


 wlc_phy_cal_init(wlc_hw->band->pi);


 brcms_b_coreinit(wlc);


 brcms_b_bsinit(wlc, chanspec);


 brcms_intrsrestore(wlc->wl, macintmask);




 mboolset(wlc_hw->wake_override, BRCMS_WAKE_OVERRIDE_MACSUSPEND);





 wlc_hw->mac_suspend_depth = 1;


 if (!fastclk)
  brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_DYNAMIC);
}
