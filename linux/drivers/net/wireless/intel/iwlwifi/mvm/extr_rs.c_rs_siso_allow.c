
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rs_tx_column {int dummy; } ;
struct rs_rate {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;



__attribute__((used)) static bool rs_siso_allow(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
     struct rs_rate *rate,
     const struct rs_tx_column *next_col)
{
 if (!sta->ht_cap.ht_supported)
  return 0;

 return 1;
}
