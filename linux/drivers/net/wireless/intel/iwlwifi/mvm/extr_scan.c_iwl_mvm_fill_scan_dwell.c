
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scan_dwell {int extended; int fragmented; int passive; int active; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_SCAN_DWELL_ACTIVE ;
 int IWL_SCAN_DWELL_EXTENDED ;
 int IWL_SCAN_DWELL_FRAGMENTED ;
 int IWL_SCAN_DWELL_PASSIVE ;

__attribute__((used)) static void iwl_mvm_fill_scan_dwell(struct iwl_mvm *mvm,
        struct iwl_scan_dwell *dwell)
{
 dwell->active = IWL_SCAN_DWELL_ACTIVE;
 dwell->passive = IWL_SCAN_DWELL_PASSIVE;
 dwell->fragmented = IWL_SCAN_DWELL_FRAGMENTED;
 dwell->extended = IWL_SCAN_DWELL_EXTENDED;
}
