
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bcast_id; } ;
struct il_priv {TYPE_1__ hw_params; } ;
struct ieee80211_sta {int dummy; } ;


 int IL_INVALID_STATION ;
 int WARN_ON (int) ;
 int il_sta_id (struct ieee80211_sta*) ;

__attribute__((used)) static inline int
il_sta_id_or_broadcast(struct il_priv *il, struct ieee80211_sta *sta)
{
 int sta_id;

 if (!sta)
  return il->hw_params.bcast_id;

 sta_id = il_sta_id(sta);





 WARN_ON(sta_id == IL_INVALID_STATION);

 return sta_id;
}
