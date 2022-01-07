
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath10k_vif {int dummy; } ;


 int ath10k_wmi_tx_beacon_nowait (struct ath10k_vif*) ;

__attribute__((used)) static void ath10k_wmi_tx_beacons_iter(void *data, u8 *mac,
           struct ieee80211_vif *vif)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;

 ath10k_wmi_tx_beacon_nowait(arvif);
}
