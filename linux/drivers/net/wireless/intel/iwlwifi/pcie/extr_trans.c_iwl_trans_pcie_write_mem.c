
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
struct iwl_trans {int dummy; } ;


 int EBUSY ;
 int HBUS_TARG_MEM_WADDR ;
 int HBUS_TARG_MEM_WDAT ;
 scalar_t__ iwl_trans_grab_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_write32 (struct iwl_trans*,int ,int const) ;

__attribute__((used)) static int iwl_trans_pcie_write_mem(struct iwl_trans *trans, u32 addr,
        const void *buf, int dwords)
{
 unsigned long flags;
 int offs, ret = 0;
 const u32 *vals = buf;

 if (iwl_trans_grab_nic_access(trans, &flags)) {
  iwl_write32(trans, HBUS_TARG_MEM_WADDR, addr);
  for (offs = 0; offs < dwords; offs++)
   iwl_write32(trans, HBUS_TARG_MEM_WDAT,
        vals ? vals[offs] : 0);
  iwl_trans_release_nic_access(trans, &flags);
 } else {
  ret = -EBUSY;
 }
 return ret;
}
