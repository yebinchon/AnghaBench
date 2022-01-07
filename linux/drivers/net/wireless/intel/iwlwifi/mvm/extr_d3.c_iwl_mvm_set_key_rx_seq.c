
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int multicast_rsc; } ;
struct TYPE_7__ {int multicast_rsc; } ;
union iwl_all_tsc_rsc {TYPE_4__ tkip; TYPE_3__ aes; } ;
struct iwl_wowlan_status {TYPE_2__* gtk; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_key_conf {int cipher; } ;
struct TYPE_5__ {union iwl_all_tsc_rsc all_tsc_rsc; } ;
struct TYPE_6__ {TYPE_1__ rsc; } ;


 int WARN_ON (int) ;


 int iwl_mvm_set_aes_rx_seq (struct iwl_mvm*,int ,int *,struct ieee80211_key_conf*) ;
 int iwl_mvm_set_tkip_rx_seq (int ,struct ieee80211_key_conf*) ;

__attribute__((used)) static void iwl_mvm_set_key_rx_seq(struct iwl_mvm *mvm,
       struct ieee80211_key_conf *key,
       struct iwl_wowlan_status *status)
{
 union iwl_all_tsc_rsc *rsc = &status->gtk[0].rsc.all_tsc_rsc;

 switch (key->cipher) {
 case 129:
  iwl_mvm_set_aes_rx_seq(mvm, rsc->aes.multicast_rsc, ((void*)0), key);
  break;
 case 128:
  iwl_mvm_set_tkip_rx_seq(rsc->tkip.multicast_rsc, key);
  break;
 default:
  WARN_ON(1);
 }
}
