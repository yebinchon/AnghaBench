
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int fwrt; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int FW_DBG_TRIGGER_USER ;
 int iwl_fw_dbg_collect (int *,int ,char*,size_t,int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_fw_dbg_collect_write(struct iwl_mvm *mvm,
           char *buf, size_t count,
           loff_t *ppos)
{
 if (count == 0)
  return 0;

 iwl_fw_dbg_collect(&mvm->fwrt, FW_DBG_TRIGGER_USER, buf,
      (count - 1), ((void*)0));

 return count;
}
