
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; } ;
struct TYPE_2__ {int radio_disabled; } ;


 int WL_RADIO_HW_DISABLE ;
 int brcms_c_radio_hwdisable_upd (struct brcms_c_info*) ;
 scalar_t__ mboolisset (int ,int ) ;

bool brcms_c_check_radio_disabled(struct brcms_c_info *wlc)
{
 brcms_c_radio_hwdisable_upd(wlc);

 return mboolisset(wlc->pub->radio_disabled, WL_RADIO_HW_DISABLE) ?
   1 : 0;
}
