
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int low_latency_actual; } ;



__attribute__((used)) static inline bool iwl_mvm_vif_low_latency(struct iwl_mvm_vif *mvmvif)
{
 return mvmvif->low_latency_actual;
}
