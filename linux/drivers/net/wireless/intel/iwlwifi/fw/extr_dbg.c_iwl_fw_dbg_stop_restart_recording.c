
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iwl_fw_runtime {TYPE_3__* trans; TYPE_1__* fw; } ;
struct iwl_fw_dbg_params {int dummy; } ;
struct TYPE_7__ {scalar_t__ ini_dest; int rec_on; int dest_tlv; } ;
struct TYPE_8__ {TYPE_2__ dbg; int status; } ;
struct TYPE_6__ {int ucode_capa; } ;


 scalar_t__ IWL_FW_INI_LOCATION_INVALID ;
 int IWL_UCODE_TLV_CAPA_DBG_SUSPEND_RESUME_CMD_SUPP ;
 int STATUS_FW_ERROR ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_fw_dbg_restart_recording (TYPE_3__*,struct iwl_fw_dbg_params*) ;
 int iwl_fw_dbg_stop_recording (TYPE_3__*,struct iwl_fw_dbg_params*) ;
 int iwl_fw_dbg_suspend_resume_hcmd (TYPE_3__*,int) ;
 int iwl_fw_set_dbg_rec_on (struct iwl_fw_runtime*) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_fw_dbg_stop_restart_recording(struct iwl_fw_runtime *fwrt,
          struct iwl_fw_dbg_params *params,
          bool stop)
{
 int ret = 0;




 if (test_bit(STATUS_FW_ERROR, &fwrt->trans->status) ||
     (!fwrt->trans->dbg.dest_tlv &&
      fwrt->trans->dbg.ini_dest == IWL_FW_INI_LOCATION_INVALID))
  return 0;

 if (fw_has_capa(&fwrt->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_DBG_SUSPEND_RESUME_CMD_SUPP))
  ret = iwl_fw_dbg_suspend_resume_hcmd(fwrt->trans, stop);
 else if (stop)
  iwl_fw_dbg_stop_recording(fwrt->trans, params);
 else
  ret = iwl_fw_dbg_restart_recording(fwrt->trans, params);
 return ret;
}
