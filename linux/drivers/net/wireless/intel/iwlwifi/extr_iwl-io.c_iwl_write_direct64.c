
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iwl_trans {int dummy; } ;


 scalar_t__ iwl_trans_grab_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_write64 (struct iwl_trans*,int ,int ) ;

void iwl_write_direct64(struct iwl_trans *trans, u64 reg, u64 value)
{
 unsigned long flags;

 if (iwl_trans_grab_nic_access(trans, &flags)) {
  iwl_write64(trans, reg, value);
  iwl_trans_release_nic_access(trans, &flags);
 }
}
