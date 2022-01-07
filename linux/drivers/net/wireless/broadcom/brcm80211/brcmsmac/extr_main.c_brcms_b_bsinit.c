
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_hardware {int shortslot; TYPE_1__* band; int unit; int d11core; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_2__ {scalar_t__ bandtype; scalar_t__ phyrev; scalar_t__ phytype; int CWmax; int CWmin; int pi; int bandunit; } ;


 scalar_t__ BRCM_BAND_5G ;
 int M_PHYTYPE ;
 int M_PHYVER ;
 int brcms_b_set_cwmax (struct brcms_hardware*,int ) ;
 int brcms_b_set_cwmin (struct brcms_hardware*,int ) ;
 int brcms_b_upd_synthpu (struct brcms_hardware*) ;
 int brcms_b_update_slot_timing (struct brcms_hardware*,int) ;
 int brcms_b_write_shm (struct brcms_hardware*,int ,int ) ;
 int brcms_c_ucode_bsinit (struct brcms_hardware*) ;
 int brcms_c_ucode_txant_set (struct brcms_hardware*) ;
 int brcms_dbg_mac80211 (int ,char*,int ,int ) ;
 int brcms_upd_ofdm_pctl1_table (struct brcms_hardware*) ;
 int wlc_phy_init (int ,int ) ;

__attribute__((used)) static void brcms_b_bsinit(struct brcms_c_info *wlc, u16 chanspec)
{
 struct brcms_hardware *wlc_hw = wlc->hw;

 brcms_dbg_mac80211(wlc_hw->d11core, "wl%d: bandunit %d\n", wlc_hw->unit,
      wlc_hw->band->bandunit);

 brcms_c_ucode_bsinit(wlc_hw);

 wlc_phy_init(wlc_hw->band->pi, chanspec);

 brcms_c_ucode_txant_set(wlc_hw);





 brcms_b_set_cwmin(wlc_hw, wlc_hw->band->CWmin);
 brcms_b_set_cwmax(wlc_hw, wlc_hw->band->CWmax);

 brcms_b_update_slot_timing(wlc_hw,
       wlc_hw->band->bandtype == BRCM_BAND_5G ?
       1 : wlc_hw->shortslot);


 brcms_b_write_shm(wlc_hw, M_PHYTYPE, (u16) wlc_hw->band->phytype);
 brcms_b_write_shm(wlc_hw, M_PHYVER, (u16) wlc_hw->band->phyrev);





 brcms_upd_ofdm_pctl1_table(wlc_hw);

 brcms_b_upd_synthpu(wlc_hw);
}
