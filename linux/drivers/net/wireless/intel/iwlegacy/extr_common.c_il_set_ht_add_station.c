
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct il_priv {TYPE_2__* stations; } ;
struct ieee80211_sta_ht_cap {scalar_t__ ampdu_density; scalar_t__ ampdu_factor; int ht_supported; } ;
struct ieee80211_sta {int smps_mode; struct ieee80211_sta_ht_cap ht_cap; } ;
typedef int __le32 ;
struct TYPE_3__ {int station_flags; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int D_ASSOC (char*,char*) ;



 int IL_WARN (char*,int) ;
 int STA_FLG_AGG_MPDU_DENSITY_POS ;
 int STA_FLG_HT40_EN_MSK ;
 int STA_FLG_MAX_AGG_SIZE_POS ;
 int STA_FLG_MIMO_DIS_MSK ;
 int STA_FLG_RTS_MIMO_PROT_MSK ;
 int cpu_to_le32 (int) ;
 scalar_t__ il_is_ht40_tx_allowed (struct il_priv*,struct ieee80211_sta_ht_cap*) ;

__attribute__((used)) static void
il_set_ht_add_station(struct il_priv *il, u8 idx, struct ieee80211_sta *sta)
{
 struct ieee80211_sta_ht_cap *sta_ht_inf = &sta->ht_cap;
 __le32 sta_flags;

 if (!sta || !sta_ht_inf->ht_supported)
  goto done;

 D_ASSOC("spatial multiplexing power save mode: %s\n",
  (sta->smps_mode == 128) ? "static" :
  (sta->smps_mode == 130) ? "dynamic" :
  "disabled");

 sta_flags = il->stations[idx].sta.station_flags;

 sta_flags &= ~(STA_FLG_RTS_MIMO_PROT_MSK | STA_FLG_MIMO_DIS_MSK);

 switch (sta->smps_mode) {
 case 128:
  sta_flags |= STA_FLG_MIMO_DIS_MSK;
  break;
 case 130:
  sta_flags |= STA_FLG_RTS_MIMO_PROT_MSK;
  break;
 case 129:
  break;
 default:
  IL_WARN("Invalid MIMO PS mode %d\n", sta->smps_mode);
  break;
 }

 sta_flags |=
     cpu_to_le32((u32) sta_ht_inf->
   ampdu_factor << STA_FLG_MAX_AGG_SIZE_POS);

 sta_flags |=
     cpu_to_le32((u32) sta_ht_inf->
   ampdu_density << STA_FLG_AGG_MPDU_DENSITY_POS);

 if (il_is_ht40_tx_allowed(il, &sta->ht_cap))
  sta_flags |= STA_FLG_HT40_EN_MSK;
 else
  sta_flags &= ~STA_FLG_HT40_EN_MSK;

 il->stations[idx].sta.station_flags = sta_flags;
done:
 return;
}
