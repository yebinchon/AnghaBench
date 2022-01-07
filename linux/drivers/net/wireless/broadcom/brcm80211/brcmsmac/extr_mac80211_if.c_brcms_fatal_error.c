
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct brcms_info {TYPE_4__* pub; TYPE_3__* wlc; } ;
struct TYPE_8__ {int ieee_hw; } ;
struct TYPE_7__ {TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_6__ {int unit; } ;
struct TYPE_5__ {int d11core; } ;


 int brcms_err (int ,char*,int ) ;
 int brcms_reset (struct brcms_info*) ;
 int ieee80211_restart_hw (int ) ;

void brcms_fatal_error(struct brcms_info *wl)
{
 brcms_err(wl->wlc->hw->d11core, "wl%d: fatal error, reinitializing\n",
    wl->wlc->pub->unit);
 brcms_reset(wl);
 ieee80211_restart_hw(wl->pub->ieee_hw);
}
