
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_time_event_data {int uid; } ;



__attribute__((used)) static inline bool
iwl_mvm_te_scheduled(struct iwl_mvm_time_event_data *te_data)
{
 if (!te_data)
  return 0;

 return !!te_data->uid;
}
