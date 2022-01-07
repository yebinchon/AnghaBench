
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {int shortslot; int wlc; scalar_t__ up; TYPE_1__* band; } ;
struct TYPE_2__ {scalar_t__ bandtype; } ;


 scalar_t__ BRCM_BAND_2G ;
 int brcms_b_update_slot_timing (struct brcms_hardware*,int) ;
 int brcms_c_enable_mac (int ) ;
 int brcms_c_suspend_mac_and_wait (int ) ;

__attribute__((used)) static void brcms_b_set_shortslot(struct brcms_hardware *wlc_hw, bool shortslot)
{
 wlc_hw->shortslot = shortslot;

 if (wlc_hw->band->bandtype == BRCM_BAND_2G && wlc_hw->up) {
  brcms_c_suspend_mac_and_wait(wlc_hw->wlc);
  brcms_b_update_slot_timing(wlc_hw, shortslot);
  brcms_c_enable_mac(wlc_hw->wlc);
 }
}
