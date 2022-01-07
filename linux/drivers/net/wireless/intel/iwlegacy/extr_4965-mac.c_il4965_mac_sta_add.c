
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sta_id; } ;
struct il_station_priv {TYPE_1__ common; int pending_frames; } ;
struct il_priv {int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_INFO (char*,int ) ;
 int IL_ERR (char*,int ,int) ;
 int IL_INVALID_STATION ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int atomic_set (int *,int ) ;
 int il4965_rs_rate_init (struct il_priv*,struct ieee80211_sta*,int ) ;
 int il_add_station_common (struct il_priv*,int ,int,struct ieee80211_sta*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
il4965_mac_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct il_priv *il = hw->priv;
 struct il_station_priv *sta_priv = (void *)sta->drv_priv;
 bool is_ap = vif->type == NL80211_IFTYPE_STATION;
 int ret;
 u8 sta_id;

 D_INFO("received request to add station %pM\n", sta->addr);
 mutex_lock(&il->mutex);
 D_INFO("proceeding to add station %pM\n", sta->addr);
 sta_priv->common.sta_id = IL_INVALID_STATION;

 atomic_set(&sta_priv->pending_frames, 0);

 ret =
     il_add_station_common(il, sta->addr, is_ap, sta, &sta_id);
 if (ret) {
  IL_ERR("Unable to add station %pM (%d)\n", sta->addr, ret);

  mutex_unlock(&il->mutex);
  return ret;
 }

 sta_priv->common.sta_id = sta_id;


 D_INFO("Initializing rate scaling for station %pM\n", sta->addr);
 il4965_rs_rate_init(il, sta, sta_id);
 mutex_unlock(&il->mutex);

 return 0;
}
