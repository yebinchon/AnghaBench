
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; int hw; } ;
struct TYPE_2__ {int radio_disabled; scalar_t__ hw_off; } ;


 int WL_RADIO_HW_DISABLE ;
 scalar_t__ brcms_b_radio_read_hwdisabled (int ) ;
 int mboolclr (int ,int ) ;
 int mboolset (int ,int ) ;

__attribute__((used)) static void brcms_c_radio_hwdisable_upd(struct brcms_c_info *wlc)
{
 if (wlc->pub->hw_off)
  return;

 if (brcms_b_radio_read_hwdisabled(wlc->hw))
  mboolset(wlc->pub->radio_disabled, WL_RADIO_HW_DISABLE);
 else
  mboolclr(wlc->pub->radio_disabled, WL_RADIO_HW_DISABLE);
}
