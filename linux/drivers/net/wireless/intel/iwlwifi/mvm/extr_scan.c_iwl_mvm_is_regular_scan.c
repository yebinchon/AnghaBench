
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_scan_params {int n_scan_plans; TYPE_1__* scan_plans; } ;
struct TYPE_2__ {int iterations; } ;



__attribute__((used)) static inline bool iwl_mvm_is_regular_scan(struct iwl_mvm_scan_params *params)
{
 return params->n_scan_plans == 1 &&
  params->scan_plans[0].iterations == 1;
}
