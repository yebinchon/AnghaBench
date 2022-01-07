
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct brcms_c_rateset {int count; int rates; } ;
struct brcms_c_info {TYPE_4__* default_bss; TYPE_3__* bsscfg; TYPE_1__* pub; } ;
struct brcm_rateset {int rates; int count; } ;
struct TYPE_8__ {struct brcms_c_rateset rateset; } ;
struct TYPE_7__ {TYPE_2__* current_bss; } ;
struct TYPE_6__ {struct brcms_c_rateset rateset; } ;
struct TYPE_5__ {scalar_t__ associated; } ;


 int memcpy (int *,int *,int ) ;

void brcms_c_get_current_rateset(struct brcms_c_info *wlc,
     struct brcm_rateset *currs)
{
 struct brcms_c_rateset *rs;

 if (wlc->pub->associated)
  rs = &wlc->bsscfg->current_bss->rateset;
 else
  rs = &wlc->default_bss->rateset;


 currs->count = rs->count;
 memcpy(&currs->rates, &rs->rates, rs->count);
}
