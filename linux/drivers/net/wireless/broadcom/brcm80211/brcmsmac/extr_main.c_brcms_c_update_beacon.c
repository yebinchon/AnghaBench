
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {int beacon_dtim_period; int beacon_tim_offset; int beacon; int defmacintmask; TYPE_1__* pub; struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 scalar_t__ BRCMS_TYPE_ADHOC ;
 scalar_t__ BRCMS_TYPE_AP ;
 int MI_BCNTPL ;
 int brcms_c_update_beacon_hw (struct brcms_c_info*,int ,int ,int ) ;

void brcms_c_update_beacon(struct brcms_c_info *wlc)
{
 struct brcms_bss_cfg *bsscfg = wlc->bsscfg;

 if (wlc->pub->up && (bsscfg->type == BRCMS_TYPE_AP ||
        bsscfg->type == BRCMS_TYPE_ADHOC)) {

  wlc->defmacintmask &= ~MI_BCNTPL;
  if (!wlc->beacon)
   return;
  brcms_c_update_beacon_hw(wlc, wlc->beacon,
      wlc->beacon_tim_offset,
      wlc->beacon_dtim_period);
 }
}
