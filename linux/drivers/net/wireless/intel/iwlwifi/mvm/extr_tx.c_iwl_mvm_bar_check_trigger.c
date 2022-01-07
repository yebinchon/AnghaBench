
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int tx_bar; } ;


 int BIT (int ) ;
 int FW_DBG_TRIGGER_BA ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int const*,int ,int ) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int *,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void
iwl_mvm_bar_check_trigger(struct iwl_mvm *mvm, const u8 *addr,
     u16 tid, u16 ssn)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_ba *ba_trig;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ((void*)0), FW_DBG_TRIGGER_BA);
 if (!trig)
  return;

 ba_trig = (void *)trig->data;

 if (!(le16_to_cpu(ba_trig->tx_bar) & BIT(tid)))
  return;

 iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
    "BAR sent to %pM, tid %d, ssn %d",
    addr, tid, ssn);
}
