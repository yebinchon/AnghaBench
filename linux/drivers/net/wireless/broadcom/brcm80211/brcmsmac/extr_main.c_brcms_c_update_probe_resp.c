
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {int probe_resp; TYPE_1__* pub; struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 scalar_t__ BRCMS_TYPE_ADHOC ;
 scalar_t__ BRCMS_TYPE_AP ;
 int brcms_c_bss_update_probe_resp (struct brcms_c_info*,struct brcms_bss_cfg*,int ,int) ;

void brcms_c_update_probe_resp(struct brcms_c_info *wlc, bool suspend)
{
 struct brcms_bss_cfg *bsscfg = wlc->bsscfg;


 if (wlc->pub->up && (bsscfg->type == BRCMS_TYPE_AP ||
        bsscfg->type == BRCMS_TYPE_ADHOC)) {
  if (!wlc->probe_resp)
   return;
  brcms_c_bss_update_probe_resp(wlc, bsscfg, wlc->probe_resp,
           suspend);
 }
}
