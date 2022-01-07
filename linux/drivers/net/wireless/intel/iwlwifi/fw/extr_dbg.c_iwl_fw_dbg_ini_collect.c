
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_fw_runtime {int dummy; } ;


 int EIO ;




 int IWL_FW_TRIGGER_ID_FW_ASSERT ;
 int IWL_FW_TRIGGER_ID_USER_TRIGGER ;
 int _iwl_fw_dbg_ini_collect (struct iwl_fw_runtime*,int) ;

int iwl_fw_dbg_ini_collect(struct iwl_fw_runtime *fwrt, u32 legacy_trigger_id)
{
 int id;

 switch (legacy_trigger_id) {
 case 129:
 case 131:
 case 130:
  id = IWL_FW_TRIGGER_ID_FW_ASSERT;
  break;
 case 128:
  id = IWL_FW_TRIGGER_ID_USER_TRIGGER;
  break;
 default:
  return -EIO;
 }

 return _iwl_fw_dbg_ini_collect(fwrt, id);
}
