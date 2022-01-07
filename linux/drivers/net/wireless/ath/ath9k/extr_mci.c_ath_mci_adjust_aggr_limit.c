
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_mci_profile {int aggr_limit; } ;
struct ath_btcoex {int btcoex_period; int duty_cycle; struct ath_mci_profile mci; } ;



__attribute__((used)) static void ath_mci_adjust_aggr_limit(struct ath_btcoex *btcoex)
{
 struct ath_mci_profile *mci = &btcoex->mci;
 u32 wlan_airtime = btcoex->btcoex_period *
    (100 - btcoex->duty_cycle) / 100;







 if ((wlan_airtime <= 4) &&
     (!mci->aggr_limit || (mci->aggr_limit > (2 * wlan_airtime))))
  mci->aggr_limit = 2 * wlan_airtime;
}
