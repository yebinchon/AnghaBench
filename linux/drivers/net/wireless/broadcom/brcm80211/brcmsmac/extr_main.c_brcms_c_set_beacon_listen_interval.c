
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_info {TYPE_1__* pub; int bcn_li_bcn; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 int brcms_c_bcn_li_upd (struct brcms_c_info*) ;

void brcms_c_set_beacon_listen_interval(struct brcms_c_info *wlc, u8 interval)
{
 wlc->bcn_li_bcn = interval;
 if (wlc->pub->up)
  brcms_c_bcn_li_upd(wlc);
}
