
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iwl_mvm {TYPE_3__* trans; TYPE_5__* fw; } ;
struct iwl_fw_dbg_trigger_txq_timer {int p2p_device; int p2p_go; int p2p_client; int softap; int bss; int ibss; int command_queue; int tdls; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_11__ {int ucode_capa; } ;
struct TYPE_10__ {scalar_t__ tfd_q_hang_detect; } ;
struct TYPE_9__ {TYPE_2__* trans_cfg; } ;
struct TYPE_8__ {TYPE_1__* base_params; } ;
struct TYPE_7__ {unsigned int wd_timeout; } ;


 int FW_DBG_TRIGGER_TXQ_TIMERS ;
 unsigned int IWL_DEF_WD_TIMEOUT ;
 int IWL_UCODE_TLV_CAPA_STA_PM_NOTIF ;
 unsigned int IWL_WATCHDOG_DISABLED ;







 scalar_t__ WARN_ON (int) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_get_trigger (TYPE_5__*,int ) ;
 int iwl_fw_dbg_trigger_enabled (TYPE_5__*,int ) ;
 TYPE_4__ iwlmvm_mod_params ;
 unsigned int le32_to_cpu (int ) ;

unsigned int iwl_mvm_get_wd_timeout(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        bool tdls, bool cmd_q)
{
 struct iwl_fw_dbg_trigger_tlv *trigger;
 struct iwl_fw_dbg_trigger_txq_timer *txq_timer;
 unsigned int default_timeout = cmd_q ?
  IWL_DEF_WD_TIMEOUT :
  mvm->trans->trans_cfg->base_params->wd_timeout;

 if (!iwl_fw_dbg_trigger_enabled(mvm->fw, FW_DBG_TRIGGER_TXQ_TIMERS)) {




  if (fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_STA_PM_NOTIF) &&
      vif && vif->type == 133)
   return IWL_WATCHDOG_DISABLED;
  return iwlmvm_mod_params.tfd_q_hang_detect ?
   default_timeout : IWL_WATCHDOG_DISABLED;
 }

 trigger = iwl_fw_dbg_get_trigger(mvm->fw, FW_DBG_TRIGGER_TXQ_TIMERS);
 txq_timer = (void *)trigger->data;

 if (tdls)
  return le32_to_cpu(txq_timer->tdls);

 if (cmd_q)
  return le32_to_cpu(txq_timer->command_queue);

 if (WARN_ON(!vif))
  return default_timeout;

 switch (ieee80211_vif_type_p2p(vif)) {
 case 134:
  return le32_to_cpu(txq_timer->ibss);
 case 128:
  return le32_to_cpu(txq_timer->bss);
 case 133:
  return le32_to_cpu(txq_timer->softap);
 case 131:
  return le32_to_cpu(txq_timer->p2p_client);
 case 129:
  return le32_to_cpu(txq_timer->p2p_go);
 case 130:
  return le32_to_cpu(txq_timer->p2p_device);
 case 132:
  return default_timeout;
 default:
  WARN_ON(1);
  return mvm->trans->trans_cfg->base_params->wd_timeout;
 }
}
