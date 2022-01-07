
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {scalar_t__ home_chanspec; int hw; TYPE_2__* band; TYPE_1__* pub; } ;
struct TYPE_4__ {int pi; } ;
struct TYPE_3__ {scalar_t__ associated; } ;


 scalar_t__ BRCMS_PHY_11N_CAP (TYPE_2__*) ;
 int M_BCN_TXTSF_OFFSET ;
 int brcms_b_write_shm (int ,int ,int ) ;
 scalar_t__ wlc_phy_chanspec_get (int ) ;

__attribute__((used)) static void brcms_c_ucode_mac_upd(struct brcms_c_info *wlc)
{



 if (wlc->home_chanspec == wlc_phy_chanspec_get(wlc->band->pi)) {
  if (wlc->pub->associated) {
   if (BRCMS_PHY_11N_CAP(wlc->band))
    brcms_b_write_shm(wlc->hw,
      M_BCN_TXTSF_OFFSET, 0);
  }
 } else {

 }
}
