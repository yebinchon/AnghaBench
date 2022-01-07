
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_c_info {TYPE_3__* band; TYPE_2__* pub; TYPE_1__* stf; } ;
typedef scalar_t__ s8 ;
struct TYPE_6__ {int pi; } ;
struct TYPE_5__ {scalar_t__ up; } ;
struct TYPE_4__ {scalar_t__ ldpc; } ;


 int brcms_c_update_beacon (struct brcms_c_info*) ;
 int brcms_c_update_probe_resp (struct brcms_c_info*,int) ;
 int wlc_phy_ldpc_override_set (int ,int) ;

__attribute__((used)) static void brcms_c_ht_update_ldpc(struct brcms_c_info *wlc, s8 val)
{
 wlc->stf->ldpc = val;

 if (wlc->pub->up) {
  brcms_c_update_beacon(wlc);
  brcms_c_update_probe_resp(wlc, 1);
  wlc_phy_ldpc_override_set(wlc->band->pi, (val ? 1 : 0));
 }
}
