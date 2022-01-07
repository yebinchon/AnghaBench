
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct brcms_info {int resched; TYPE_2__* pub; TYPE_3__* wlc; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int up; int unit; } ;
struct TYPE_4__ {int d11core; } ;


 int brcms_c_reset (TYPE_3__*) ;
 int brcms_dbg_info (int ,char*,int ) ;

uint brcms_reset(struct brcms_info *wl)
{
 brcms_dbg_info(wl->wlc->hw->d11core, "Resetting wl%d\n", wl->pub->unit);
 brcms_c_reset(wl->wlc);


 wl->resched = 0;


 wl->pub->up = 0;

 return 0;
}
