
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u32 ;
struct brcms_hardware {int noreset; scalar_t__ sbclk; TYPE_1__* wlc; int * bandstate; int band; int unit; int d11core; } ;
struct TYPE_2__ {int * bandstate; int band; } ;


 int SICF_GMODE ;
 int brcms_b_core_ioctl (struct brcms_hardware*,int ,int ) ;
 int brcms_dbg_mac80211 (int ,char*,int ,size_t) ;

__attribute__((used)) static void brcms_c_setxband(struct brcms_hardware *wlc_hw, uint bandunit)
{
 brcms_dbg_mac80211(wlc_hw->d11core, "wl%d: bandunit %d\n", wlc_hw->unit,
      bandunit);

 wlc_hw->band = wlc_hw->bandstate[bandunit];





 wlc_hw->wlc->band = wlc_hw->wlc->bandstate[bandunit];


 if (wlc_hw->sbclk && !wlc_hw->noreset) {
  u32 gmode = 0;

  if (bandunit == 0)
   gmode = SICF_GMODE;

  brcms_b_core_ioctl(wlc_hw, SICF_GMODE, gmode);
 }
}
