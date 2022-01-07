
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_fw_runtime {TYPE_2__* trans; } ;
struct TYPE_3__ {int hw_error; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;


 int IWL_FW_TRIGGER_ID_FW_HW_ERROR ;
 int _iwl_fw_dbg_ini_collect (struct iwl_fw_runtime*,int ) ;
 int iwl_dump_desc_assert ;
 int iwl_fw_dbg_collect_desc (struct iwl_fw_runtime*,int *,int,int ) ;
 scalar_t__ iwl_trans_dbg_ini_valid (TYPE_2__*) ;

__attribute__((used)) static inline void iwl_fw_error_collect(struct iwl_fw_runtime *fwrt)
{
 if (iwl_trans_dbg_ini_valid(fwrt->trans) && fwrt->trans->dbg.hw_error) {
  _iwl_fw_dbg_ini_collect(fwrt, IWL_FW_TRIGGER_ID_FW_HW_ERROR);
  fwrt->trans->dbg.hw_error = 0;
 } else {
  iwl_fw_dbg_collect_desc(fwrt, &iwl_dump_desc_assert, 0, 0);
 }
}
