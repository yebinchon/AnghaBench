
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_tx_resp_v3 {struct agg_tx_status* status; } ;
struct agg_tx_status {int dummy; } ;
struct iwl_mvm_tx_resp {struct agg_tx_status status; } ;
struct iwl_mvm {int dummy; } ;


 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;

__attribute__((used)) static inline struct agg_tx_status *
iwl_mvm_get_agg_status(struct iwl_mvm *mvm, void *tx_resp)
{
 if (iwl_mvm_has_new_tx_api(mvm))
  return &((struct iwl_mvm_tx_resp *)tx_resp)->status;
 else
  return ((struct iwl_mvm_tx_resp_v3 *)tx_resp)->status;
}
