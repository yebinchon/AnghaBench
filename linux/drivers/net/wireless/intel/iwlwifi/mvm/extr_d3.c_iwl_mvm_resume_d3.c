
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; } ;


 int __iwl_mvm_resume (struct iwl_mvm*,int) ;
 int iwl_trans_resume (int ) ;

__attribute__((used)) static int iwl_mvm_resume_d3(struct iwl_mvm *mvm)
{
 iwl_trans_resume(mvm->trans);

 return __iwl_mvm_resume(mvm, 0);
}
