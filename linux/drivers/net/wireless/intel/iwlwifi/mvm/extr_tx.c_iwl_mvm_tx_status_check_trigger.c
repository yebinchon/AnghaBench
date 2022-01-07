
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tx_status {TYPE_1__* statuses; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct TYPE_2__ {int status; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FW_DBG_TRIGGER_TX_STATUS ;
 int TX_STATUS_MSK ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int *,int ) ;

__attribute__((used)) static void iwl_mvm_tx_status_check_trigger(struct iwl_mvm *mvm,
         u32 status)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_tx_status *status_trig;
 int i;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ((void*)0),
         FW_DBG_TRIGGER_TX_STATUS);
 if (!trig)
  return;

 status_trig = (void *)trig->data;

 for (i = 0; i < ARRAY_SIZE(status_trig->statuses); i++) {

  if (!status_trig->statuses[i].status)
   break;

  if (status_trig->statuses[i].status != (status & TX_STATUS_MSK))
   continue;

  iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
     "Tx status %d was received",
     status & TX_STATUS_MSK);
  break;
 }
}
