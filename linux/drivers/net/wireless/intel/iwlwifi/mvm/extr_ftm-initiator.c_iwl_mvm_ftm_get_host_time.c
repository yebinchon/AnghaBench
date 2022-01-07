
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct iwl_mvm {int dummy; } ;
typedef int __le32 ;


 scalar_t__ U32_MAX ;
 int iwl_mvm_get_sync_time (struct iwl_mvm*,scalar_t__*,int*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static u64 iwl_mvm_ftm_get_host_time(struct iwl_mvm *mvm, __le32 fw_gp2_ts)
{
 u32 gp2_ts = le32_to_cpu(fw_gp2_ts);
 u32 curr_gp2, diff;
 u64 now_from_boot_ns;

 iwl_mvm_get_sync_time(mvm, &curr_gp2, &now_from_boot_ns);

 if (curr_gp2 >= gp2_ts)
  diff = curr_gp2 - gp2_ts;
 else
  diff = curr_gp2 + (U32_MAX - gp2_ts + 1);

 return now_from_boot_ns - (u64)diff * 1000;
}
