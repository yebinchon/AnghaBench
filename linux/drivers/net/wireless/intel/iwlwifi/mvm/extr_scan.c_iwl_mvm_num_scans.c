
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int scan_status; } ;


 int IWL_MVM_SCAN_MASK ;
 int hweight32 (int) ;

__attribute__((used)) static int iwl_mvm_num_scans(struct iwl_mvm *mvm)
{
 return hweight32(mvm->scan_status & IWL_MVM_SCAN_MASK);
}
