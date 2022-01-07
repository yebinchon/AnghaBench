
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {TYPE_2__* stations; int sta_lock; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le32 ;
struct TYPE_3__ {int station_flags; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int iwl_sta_calc_ht_flags (struct iwl_priv*,struct ieee80211_sta*,struct iwl_rxon_context*,int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_set_ht_add_station(struct iwl_priv *priv, u8 index,
       struct ieee80211_sta *sta,
       struct iwl_rxon_context *ctx)
{
 __le32 flags, mask;

 iwl_sta_calc_ht_flags(priv, sta, ctx, &flags, &mask);

 lockdep_assert_held(&priv->sta_lock);
 priv->stations[index].sta.station_flags &= ~mask;
 priv->stations[index].sta.station_flags |= flags;
}
