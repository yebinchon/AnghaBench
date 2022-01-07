
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {int low_latency; int low_latency_actual; } ;
typedef enum iwl_mvm_low_latency_cause { ____Placeholder_iwl_mvm_low_latency_cause } iwl_mvm_low_latency_cause ;


 int LOW_LATENCY_DEBUGFS_FORCE ;
 int LOW_LATENCY_DEBUGFS_FORCE_ENABLE ;

__attribute__((used)) static inline
void iwl_mvm_vif_set_low_latency(struct iwl_mvm_vif *mvmvif, bool set,
     enum iwl_mvm_low_latency_cause cause)
{
 u8 new_state;

 if (set)
  mvmvif->low_latency |= cause;
 else
  mvmvif->low_latency &= ~cause;





 if (mvmvif->low_latency & LOW_LATENCY_DEBUGFS_FORCE_ENABLE &&
     cause != LOW_LATENCY_DEBUGFS_FORCE_ENABLE)
  return;

 if (cause == LOW_LATENCY_DEBUGFS_FORCE_ENABLE && set)



  new_state = !!(mvmvif->low_latency &
          LOW_LATENCY_DEBUGFS_FORCE);
 else



  new_state = !!(mvmvif->low_latency &
      ~(LOW_LATENCY_DEBUGFS_FORCE_ENABLE |
        LOW_LATENCY_DEBUGFS_FORCE));

 mvmvif->low_latency_actual = new_state;
}
