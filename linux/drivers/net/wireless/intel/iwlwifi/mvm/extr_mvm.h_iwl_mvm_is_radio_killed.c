
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int status; } ;


 int IWL_MVM_STATUS_HW_CTKILL ;
 int IWL_MVM_STATUS_HW_RFKILL ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool iwl_mvm_is_radio_killed(struct iwl_mvm *mvm)
{
 return test_bit(IWL_MVM_STATUS_HW_RFKILL, &mvm->status) ||
        test_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status);
}
