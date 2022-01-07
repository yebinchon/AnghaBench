
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ath10k {TYPE_2__* hw; } ;
struct TYPE_3__ {int listen_interval; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static u32 ath10k_peer_assoc_h_listen_intval(struct ath10k *ar,
          struct ieee80211_vif *vif)
{
 if (vif->type == NL80211_IFTYPE_STATION)
  return 1;

 return ar->hw->conf.listen_interval;
}
