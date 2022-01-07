
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans_txq_scd_cfg {int fifo; int tid; int sta_id; int aggregate; int frame_limit; } ;
struct iwl_scd_txq_cfg_cmd {int scd_queue; int ssn; int tid; int aggregate; int tx_fifo; int sta_id; int window; int action; } ;
struct iwl_mvm {int trans; } ;
struct ieee80211_sta {int dummy; } ;
typedef int cmd ;


 int SCD_CFG_ENABLE_QUEUE ;
 int SCD_QUEUE_CFG ;
 int WARN (int ,char*,int,int ) ;
 scalar_t__ WARN_ON (int ) ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_scd_txq_cfg_cmd*) ;
 int iwl_mvm_update_txq_mapping (struct iwl_mvm*,struct ieee80211_sta*,int,int ,int ) ;
 int iwl_trans_txq_enable_cfg (int ,int,int ,int *,unsigned int) ;
 int le16_add_cpu (int *,int) ;

__attribute__((used)) static bool iwl_mvm_enable_txq(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
          int queue, u16 ssn,
          const struct iwl_trans_txq_scd_cfg *cfg,
          unsigned int wdg_timeout)
{
 struct iwl_scd_txq_cfg_cmd cmd = {
  .scd_queue = queue,
  .action = SCD_CFG_ENABLE_QUEUE,
  .window = cfg->frame_limit,
  .sta_id = cfg->sta_id,
  .ssn = cpu_to_le16(ssn),
  .tx_fifo = cfg->fifo,
  .aggregate = cfg->aggregate,
  .tid = cfg->tid,
 };
 bool inc_ssn;

 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return 0;


 if (!iwl_mvm_update_txq_mapping(mvm, sta, queue, cfg->sta_id, cfg->tid))
  return 0;

 inc_ssn = iwl_trans_txq_enable_cfg(mvm->trans, queue, ssn,
        ((void*)0), wdg_timeout);
 if (inc_ssn)
  le16_add_cpu(&cmd.ssn, 1);

 WARN(iwl_mvm_send_cmd_pdu(mvm, SCD_QUEUE_CFG, 0, sizeof(cmd), &cmd),
      "Failed to configure queue %d on FIFO %d\n", queue, cfg->fifo);

 return inc_ssn;
}
