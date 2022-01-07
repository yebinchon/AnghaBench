
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef int u16 ;
struct txpwr_limits {int dummy; } ;
struct brcms_hardware {int _nbands; TYPE_2__* band; scalar_t__ clk; scalar_t__ up; TYPE_1__** bandstate; int chanspec; int unit; int d11core; } ;
struct TYPE_4__ {size_t bandunit; int pi; } ;
struct TYPE_3__ {int pi; } ;


 int brcms_b_mute (struct brcms_hardware*,int) ;
 int brcms_b_setband (struct brcms_hardware*,size_t,int ) ;
 int brcms_c_setxband (struct brcms_hardware*,size_t) ;
 int brcms_dbg_mac80211 (int ,char*,int ,int ) ;
 size_t chspec_bandunit (int ) ;
 int wlc_phy_chanspec_radio_set (int ,int ) ;
 int wlc_phy_chanspec_set (int ,int ) ;
 int wlc_phy_initcal_enable (int ,int) ;
 int wlc_phy_txpower_limit_set (int ,struct txpwr_limits*,int ) ;

void
brcms_b_set_chanspec(struct brcms_hardware *wlc_hw, u16 chanspec,
        bool mute_tx, struct txpwr_limits *txpwr)
{
 uint bandunit;

 brcms_dbg_mac80211(wlc_hw->d11core, "wl%d: 0x%x\n", wlc_hw->unit,
      chanspec);

 wlc_hw->chanspec = chanspec;


 if (wlc_hw->_nbands > 1) {
  bandunit = chspec_bandunit(chanspec);
  if (wlc_hw->band->bandunit != bandunit) {



   if (wlc_hw->up) {
    wlc_phy_chanspec_radio_set(wlc_hw->
          bandstate[bandunit]->
          pi, chanspec);
    brcms_b_setband(wlc_hw, bandunit, chanspec);
   } else {
    brcms_c_setxband(wlc_hw, bandunit);
   }
  }
 }

 wlc_phy_initcal_enable(wlc_hw->band->pi, !mute_tx);

 if (!wlc_hw->up) {
  if (wlc_hw->clk)
   wlc_phy_txpower_limit_set(wlc_hw->band->pi, txpwr,
        chanspec);
  wlc_phy_chanspec_radio_set(wlc_hw->band->pi, chanspec);
 } else {
  wlc_phy_chanspec_set(wlc_hw->band->pi, chanspec);
  wlc_phy_txpower_limit_set(wlc_hw->band->pi, txpwr, chanspec);


  brcms_b_mute(wlc_hw, mute_tx);
 }
}
