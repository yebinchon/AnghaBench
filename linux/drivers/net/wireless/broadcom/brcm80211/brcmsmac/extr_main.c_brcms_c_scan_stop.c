
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {int pi; } ;


 int PHY_HOLD_FOR_SCAN ;
 int wlc_phy_hold_upd (int ,int ,int) ;

void brcms_c_scan_stop(struct brcms_c_info *wlc)
{
 wlc_phy_hold_upd(wlc->band->pi, PHY_HOLD_FOR_SCAN, 0);
}
