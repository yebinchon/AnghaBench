
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct macstat {int dummy; } ;
struct brcms_c_info {TYPE_3__* hw; TYPE_2__* core; TYPE_1__* pub; } ;
struct TYPE_6__ {int d11core; } ;
struct TYPE_5__ {int macstat_snapshot; } ;
struct TYPE_4__ {int unit; } ;


 int brcms_b_reset (TYPE_3__*) ;
 int brcms_c_statsupd (struct brcms_c_info*) ;
 int brcms_dbg_info (int ,char*,int ) ;
 int memset (int ,int ,int) ;

void brcms_c_reset(struct brcms_c_info *wlc)
{
 brcms_dbg_info(wlc->hw->d11core, "wl%d\n", wlc->pub->unit);


 brcms_c_statsupd(wlc);


 memset(wlc->core->macstat_snapshot, 0, sizeof(struct macstat));

 brcms_b_reset(wlc->hw);
}
