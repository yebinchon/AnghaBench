
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_mvm {int dbgfs_prph_reg_addr; int trans; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 int iwl_write_prph (int ,int ,int ) ;
 int sscanf (char*,char*,int *,int *) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_prph_reg_write(struct iwl_mvm *mvm, char *buf,
    size_t count, loff_t *ppos)
{
 u8 args;
 u32 value;

 args = sscanf(buf, "%i %i", &mvm->dbgfs_prph_reg_addr, &value);

 if (args == 1)
  goto out;


 if (args != 2)
  return -EINVAL;

 iwl_write_prph(mvm->trans, mvm->dbgfs_prph_reg_addr, value);

out:
 return count;
}
