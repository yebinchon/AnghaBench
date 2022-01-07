
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_time_quota_cmd_v1 {int dummy; } ;
struct iwl_time_quota_cmd {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 scalar_t__ iwl_mvm_has_quota_low_latency (struct iwl_mvm*) ;

__attribute__((used)) static inline size_t iwl_mvm_quota_cmd_size(struct iwl_mvm *mvm)
{
 return iwl_mvm_has_quota_low_latency(mvm) ?
  sizeof(struct iwl_time_quota_cmd) :
  sizeof(struct iwl_time_quota_cmd_v1);
}
