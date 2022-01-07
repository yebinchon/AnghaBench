
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_ftm_responder_iter_data {scalar_t__ ctx; int responder; } ;
struct TYPE_2__ {scalar_t__ ftmr_params; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; int chanctx_conf; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static void iwl_mvm_ftm_responder_chanctx_iter(void *_data, u8 *mac,
            struct ieee80211_vif *vif)
{
 struct iwl_mvm_ftm_responder_iter_data *data = _data;

 if (rcu_access_pointer(vif->chanctx_conf) == data->ctx &&
     vif->type == NL80211_IFTYPE_AP && vif->bss_conf.ftmr_params)
  data->responder = 1;
}
