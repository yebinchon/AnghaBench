
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_mvm_int_sta {int sta_id; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_MAX_TID_COUNT ;
 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,struct iwl_mvm_int_sta*,int *,int,int) ;
 int iwl_mvm_disable_txq (struct iwl_mvm*,int *,int,int ,int ) ;
 int iwl_mvm_enable_aux_snif_queue (struct iwl_mvm*,int,int ,int) ;
 int iwl_mvm_enable_aux_snif_queue_tvqm (struct iwl_mvm*,int ) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,int ) ;

__attribute__((used)) static int iwl_mvm_add_int_sta_with_queue(struct iwl_mvm *mvm, int macidx,
       int maccolor,
       struct iwl_mvm_int_sta *sta,
       u16 *queue, int fifo)
{
 int ret;


 if (!iwl_mvm_has_new_tx_api(mvm))
  iwl_mvm_enable_aux_snif_queue(mvm, *queue, sta->sta_id, fifo);

 ret = iwl_mvm_add_int_sta_common(mvm, sta, ((void*)0), macidx, maccolor);
 if (ret) {
  if (!iwl_mvm_has_new_tx_api(mvm))
   iwl_mvm_disable_txq(mvm, ((void*)0), *queue,
         IWL_MAX_TID_COUNT, 0);
  return ret;
 }





 if (iwl_mvm_has_new_tx_api(mvm)) {
  int txq;

  txq = iwl_mvm_enable_aux_snif_queue_tvqm(mvm, sta->sta_id);
  if (txq < 0) {
   iwl_mvm_rm_sta_common(mvm, sta->sta_id);
   return txq;
  }

  *queue = txq;
 }

 return 0;
}
