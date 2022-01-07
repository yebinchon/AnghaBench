
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy {scalar_t__ nphy_deaf_count; TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_stay_in_carriersearch_nphy (struct brcms_phy*,int) ;

void wlc_nphy_deaf_mode(struct brcms_phy *pi, bool mode)
{
 wlapi_suspend_mac_and_wait(pi->sh->physhim);

 if (mode) {
  if (pi->nphy_deaf_count == 0)
   wlc_phy_stay_in_carriersearch_nphy(pi, 1);
 } else if (pi->nphy_deaf_count > 0) {
  wlc_phy_stay_in_carriersearch_nphy(pi, 0);
 }

 wlapi_enable_mac(pi->sh->physhim);
}
