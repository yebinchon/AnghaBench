
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct brcms_hw_band {int * pi; } ;
struct brcms_hardware {scalar_t__ _nbands; int * sih; int physhim; int phy_sh; struct brcms_hw_band** bandstate; struct brcms_hw_band* band; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;


 size_t OTHERBANDUNIT (struct brcms_c_info*) ;
 int ai_detach (int *) ;
 int brcms_b_detach_dmapio (struct brcms_hardware*) ;
 int kfree (int ) ;
 int wlc_phy_detach (int *) ;
 int wlc_phy_shim_detach (int ) ;

__attribute__((used)) static void brcms_b_detach(struct brcms_c_info *wlc)
{
 uint i;
 struct brcms_hw_band *band;
 struct brcms_hardware *wlc_hw = wlc->hw;

 brcms_b_detach_dmapio(wlc_hw);

 band = wlc_hw->band;
 for (i = 0; i < wlc_hw->_nbands; i++) {
  if (band->pi) {

   wlc_phy_detach(band->pi);
   band->pi = ((void*)0);
  }
  band = wlc_hw->bandstate[OTHERBANDUNIT(wlc)];
 }


 kfree(wlc_hw->phy_sh);

 wlc_phy_shim_detach(wlc_hw->physhim);

 if (wlc_hw->sih) {
  ai_detach(wlc_hw->sih);
  wlc_hw->sih = ((void*)0);
 }
}
