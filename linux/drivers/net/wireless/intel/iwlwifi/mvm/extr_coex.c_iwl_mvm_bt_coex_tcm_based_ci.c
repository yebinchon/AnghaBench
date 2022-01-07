
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {unsigned long bt_coex_last_tcm_ts; } ;
struct iwl_bt_iterator_data {scalar_t__ primary_load; scalar_t__ secondary_load; int secondary; int primary; scalar_t__ primary_ll; } ;


 scalar_t__ MVM_COEX_TCM_PERIOD ;
 unsigned long jiffies ;
 int swap (int ,int ) ;
 int time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static void iwl_mvm_bt_coex_tcm_based_ci(struct iwl_mvm *mvm,
      struct iwl_bt_iterator_data *data)
{
 unsigned long now = jiffies;

 if (!time_after(now, mvm->bt_coex_last_tcm_ts + MVM_COEX_TCM_PERIOD))
  return;

 mvm->bt_coex_last_tcm_ts = now;




 if (data->primary_ll)
  return;

 if (data->primary_load >= data->secondary_load)
  return;

 swap(data->primary, data->secondary);
}
