
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_fw_dbg_params {int out_ctrl; int in_sample; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int DBGC_IN_SAMPLE ;
 int DBGC_OUT_CTRL ;
 int EIO ;
 scalar_t__ IWL_DEVICE_FAMILY_7000 ;
 int MON_BUFF_SAMPLE_CTL ;
 int iwl_clear_bits_prph (struct iwl_trans*,int ,int) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static int iwl_fw_dbg_restart_recording(struct iwl_trans *trans,
     struct iwl_fw_dbg_params *params)
{
 if (!params)
  return -EIO;

 if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {
  iwl_clear_bits_prph(trans, MON_BUFF_SAMPLE_CTL, 0x100);
  iwl_clear_bits_prph(trans, MON_BUFF_SAMPLE_CTL, 0x1);
  iwl_set_bits_prph(trans, MON_BUFF_SAMPLE_CTL, 0x1);
 } else {
  iwl_write_umac_prph(trans, DBGC_IN_SAMPLE, params->in_sample);
  iwl_write_umac_prph(trans, DBGC_OUT_CTRL, params->out_ctrl);
 }

 return 0;
}
