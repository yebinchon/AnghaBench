
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EIO ;
 int iwl_force_nmi (int ) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;

__attribute__((used)) static ssize_t iwl_dbgfs_fw_nmi_write(struct iwl_mvm *mvm, char *buf,
          size_t count, loff_t *ppos)
{
 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 iwl_force_nmi(mvm->trans);

 return count;
}
