
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ieee80211_channel {int hw_value; } ;
struct brcms_c_info {int clk; int bandinit_pending; int WDarmed; TYPE_5__* stf; int wdtimer; TYPE_6__* hw; TYPE_4__* pub; int wl; struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {scalar_t__ type; } ;
struct TYPE_15__ {int d11core; int sih; } ;
struct TYPE_14__ {int ldpc; } ;
struct TYPE_13__ {int hw_up; int boardflags; int boardrev; int up; TYPE_3__* ieee_hw; scalar_t__ radio_disabled; int unit; scalar_t__ hw_off; } ;
struct TYPE_10__ {struct ieee80211_channel* chan; } ;
struct TYPE_11__ {TYPE_1__ chandef; } ;
struct TYPE_12__ {TYPE_2__ conf; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4313 ;
 int BFL_FEM ;
 int BFL_FEM_BT ;
 scalar_t__ BRCMS_TYPE_ADHOC ;
 scalar_t__ BRCMS_TYPE_STATION ;
 int BRCM_BAND_ALL ;
 int ENOMEDIUM ;
 int MHF1 ;
 int MHF1_EDCF ;
 int MHF4 ;
 int MHF4_EXTPA_ENABLE ;
 int MHF5 ;
 int MHF5_4313_GPIOCTRL ;
 int TIMER_INTERVAL_WATCHDOG ;
 int WL_RADIO_HW_DISABLE ;
 scalar_t__ ai_get_chip_id (int ) ;
 int brcms_add_timer (int ,int ,int) ;
 int brcms_b_hw_up (TYPE_6__*) ;
 int brcms_b_mhf (TYPE_6__*,int ,int ,int ,int ) ;
 int brcms_b_up_finish (TYPE_6__*) ;
 int brcms_b_up_prep (TYPE_6__*) ;
 int brcms_c_enable_mac (struct brcms_c_info*) ;
 int brcms_c_ht_update_ldpc (struct brcms_c_info*,int ) ;
 int brcms_c_radio_monitor_start (struct brcms_c_info*) ;
 int brcms_c_radio_monitor_stop (struct brcms_c_info*) ;
 int brcms_c_set_chanspec (struct brcms_c_info*,int ) ;
 int brcms_c_stf_phy_txant_upd (struct brcms_c_info*) ;
 int brcms_c_suspend_mac_and_wait (struct brcms_c_info*) ;
 int brcms_c_wme_retries_write (struct brcms_c_info*) ;
 int brcms_dbg_info (int ,char*,int ) ;
 scalar_t__ brcms_deviceremoved (struct brcms_c_info*) ;
 int brcms_err (int ,char*,int ) ;
 int brcms_init (int ) ;
 int ch20mhz_chspec (int ) ;
 int mboolisset (scalar_t__,int ) ;
 int mboolset (scalar_t__,int ) ;

int brcms_c_up(struct brcms_c_info *wlc)
{
 struct ieee80211_channel *ch;

 brcms_dbg_info(wlc->hw->d11core, "wl%d\n", wlc->pub->unit);


 if (wlc->pub->hw_off || brcms_deviceremoved(wlc))
  return -ENOMEDIUM;

 if (!wlc->pub->hw_up) {
  brcms_b_hw_up(wlc->hw);
  wlc->pub->hw_up = 1;
 }

 if ((wlc->pub->boardflags & BFL_FEM)
     && (ai_get_chip_id(wlc->hw->sih) == BCMA_CHIP_ID_BCM4313)) {
  if (wlc->pub->boardrev >= 0x1250
      && (wlc->pub->boardflags & BFL_FEM_BT))
   brcms_b_mhf(wlc->hw, MHF5, MHF5_4313_GPIOCTRL,
    MHF5_4313_GPIOCTRL, BRCM_BAND_ALL);
  else
   brcms_b_mhf(wlc->hw, MHF4, MHF4_EXTPA_ENABLE,
        MHF4_EXTPA_ENABLE, BRCM_BAND_ALL);
 }
 if (!wlc->pub->radio_disabled) {
  int status = brcms_b_up_prep(wlc->hw);
  if (status == -ENOMEDIUM) {
   if (!mboolisset
       (wlc->pub->radio_disabled, WL_RADIO_HW_DISABLE)) {
    struct brcms_bss_cfg *bsscfg = wlc->bsscfg;
    mboolset(wlc->pub->radio_disabled,
      WL_RADIO_HW_DISABLE);
    if (bsscfg->type == BRCMS_TYPE_STATION ||
        bsscfg->type == BRCMS_TYPE_ADHOC)
     brcms_err(wlc->hw->d11core,
        "wl%d: up: rfdisable -> "
        "bsscfg_disable()\n",
         wlc->pub->unit);
   }
  }
 }

 if (wlc->pub->radio_disabled) {
  brcms_c_radio_monitor_start(wlc);
  return 0;
 }


 wlc->clk = 1;

 brcms_c_radio_monitor_stop(wlc);


 brcms_b_mhf(wlc->hw, MHF1, MHF1_EDCF, MHF1_EDCF, BRCM_BAND_ALL);

 brcms_init(wlc->wl);
 wlc->pub->up = 1;

 if (wlc->bandinit_pending) {
  ch = wlc->pub->ieee_hw->conf.chandef.chan;
  brcms_c_suspend_mac_and_wait(wlc);
  brcms_c_set_chanspec(wlc, ch20mhz_chspec(ch->hw_value));
  wlc->bandinit_pending = 0;
  brcms_c_enable_mac(wlc);
 }

 brcms_b_up_finish(wlc->hw);


 brcms_c_wme_retries_write(wlc);


 brcms_add_timer(wlc->wdtimer, TIMER_INTERVAL_WATCHDOG, 1);
 wlc->WDarmed = 1;


 brcms_c_stf_phy_txant_upd(wlc);

 brcms_c_ht_update_ldpc(wlc, wlc->stf->ldpc);

 return 0;
}
