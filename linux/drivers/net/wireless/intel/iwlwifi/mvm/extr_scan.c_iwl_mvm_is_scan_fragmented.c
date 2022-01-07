
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iwl_mvm_scan_type { ____Placeholder_iwl_mvm_scan_type } iwl_mvm_scan_type ;


 int IWL_SCAN_TYPE_FAST_BALANCE ;
 int IWL_SCAN_TYPE_FRAGMENTED ;

__attribute__((used)) static bool iwl_mvm_is_scan_fragmented(enum iwl_mvm_scan_type type)
{
 return (type == IWL_SCAN_TYPE_FRAGMENTED ||
  type == IWL_SCAN_TYPE_FAST_BALANCE);
}
