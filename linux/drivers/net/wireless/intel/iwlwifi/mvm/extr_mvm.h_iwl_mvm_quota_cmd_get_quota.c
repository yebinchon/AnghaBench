
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_time_quota_data_v1 {int dummy; } ;
struct iwl_time_quota_data {int dummy; } ;
struct iwl_time_quota_cmd {struct iwl_time_quota_data* quotas; } ;
struct iwl_mvm {int dummy; } ;


 scalar_t__ iwl_mvm_has_quota_low_latency (struct iwl_mvm*) ;

__attribute__((used)) static inline struct iwl_time_quota_data
*iwl_mvm_quota_cmd_get_quota(struct iwl_mvm *mvm,
        struct iwl_time_quota_cmd *cmd,
        int i)
{
 struct iwl_time_quota_data_v1 *quotas;

 if (iwl_mvm_has_quota_low_latency(mvm))
  return &cmd->quotas[i];

 quotas = (struct iwl_time_quota_data_v1 *)cmd->quotas;
 return (struct iwl_time_quota_data *)&quotas[i];
}
