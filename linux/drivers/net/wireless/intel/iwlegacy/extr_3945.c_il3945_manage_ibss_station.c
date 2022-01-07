
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_vif_priv {int ibss_bssid_sta_id; } ;
struct il_priv {scalar_t__ band; int hw; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;


 scalar_t__ NL80211_BAND_5GHZ ;
 int RATE_1M_PLCP ;
 int RATE_6M_PLCP ;
 int il3945_add_bssid_station (struct il_priv*,int ,int *) ;
 int il3945_rate_scale_init (int ,int ) ;
 int il3945_sync_sta (struct il_priv*,int ,int ) ;
 int il_remove_station (struct il_priv*,int ,int ) ;

__attribute__((used)) static int
il3945_manage_ibss_station(struct il_priv *il, struct ieee80211_vif *vif,
      bool add)
{
 struct il_vif_priv *vif_priv = (void *)vif->drv_priv;
 int ret;

 if (add) {
  ret =
      il3945_add_bssid_station(il, vif->bss_conf.bssid,
          &vif_priv->ibss_bssid_sta_id);
  if (ret)
   return ret;

  il3945_sync_sta(il, vif_priv->ibss_bssid_sta_id,
    (il->band ==
     NL80211_BAND_5GHZ) ? RATE_6M_PLCP :
    RATE_1M_PLCP);
  il3945_rate_scale_init(il->hw, vif_priv->ibss_bssid_sta_id);

  return 0;
 }

 return il_remove_station(il, vif_priv->ibss_bssid_sta_id,
     vif->bss_conf.bssid);
}
