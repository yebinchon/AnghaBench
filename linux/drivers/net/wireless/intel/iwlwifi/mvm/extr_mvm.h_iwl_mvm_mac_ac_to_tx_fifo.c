
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;
typedef enum ieee80211_ac_numbers { ____Placeholder_ieee80211_ac_numbers } ieee80211_ac_numbers ;


 int * iwl_mvm_ac_to_gen2_tx_fifo ;
 int * iwl_mvm_ac_to_tx_fifo ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;

__attribute__((used)) static inline u8 iwl_mvm_mac_ac_to_tx_fifo(struct iwl_mvm *mvm,
        enum ieee80211_ac_numbers ac)
{
 return iwl_mvm_has_new_tx_api(mvm) ?
  iwl_mvm_ac_to_gen2_tx_fifo[ac] : iwl_mvm_ac_to_tx_fifo[ac];
}
