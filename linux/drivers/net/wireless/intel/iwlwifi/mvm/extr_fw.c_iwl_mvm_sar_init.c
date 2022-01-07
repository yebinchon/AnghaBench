
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;


 int ENOENT ;
 int IWL_DEBUG_RADIO (struct iwl_mvm*,char*,int) ;
 int iwl_mvm_sar_get_ewrd_table (struct iwl_mvm*) ;
 int iwl_mvm_sar_get_wrds_table (struct iwl_mvm*) ;
 int iwl_mvm_sar_select_profile (struct iwl_mvm*,int,int) ;

__attribute__((used)) static int iwl_mvm_sar_init(struct iwl_mvm *mvm)
{
 int ret;

 ret = iwl_mvm_sar_get_wrds_table(mvm);
 if (ret < 0) {
  IWL_DEBUG_RADIO(mvm,
    "WRDS SAR BIOS table invalid or unavailable. (%d)\n",
    ret);




  return 1;
 }

 ret = iwl_mvm_sar_get_ewrd_table(mvm);

 if (ret < 0)
  IWL_DEBUG_RADIO(mvm,
    "EWRD SAR BIOS table invalid or unavailable. (%d)\n",
    ret);


 ret = iwl_mvm_sar_select_profile(mvm, 1, 1);






 if (ret == -ENOENT)
  return 1;

 return ret;
}
