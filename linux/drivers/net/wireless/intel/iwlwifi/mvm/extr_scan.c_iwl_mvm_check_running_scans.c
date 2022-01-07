
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int scan_status; scalar_t__ max_scans; TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int EBUSY ;
 int EIO ;


 int IWL_MVM_SCAN_REGULAR_MASK ;

 int IWL_MVM_SCAN_SCHED_MASK ;
 int IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ;
 int WARN_ON (int) ;
 int fw_has_capa (int *,int ) ;
 scalar_t__ iwl_mvm_num_scans (struct iwl_mvm*) ;
 int iwl_mvm_scan_stop (struct iwl_mvm*,int const,int) ;

__attribute__((used)) static int iwl_mvm_check_running_scans(struct iwl_mvm *mvm, int type)
{
 bool unified_image = fw_has_capa(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);
 if ((type == 128 || type == 130) &&
     mvm->scan_status & (128 | 130))
  return -EBUSY;

 if (iwl_mvm_num_scans(mvm) < mvm->max_scans)
  return 0;




 switch (type) {
 case 129:
  if (mvm->scan_status & IWL_MVM_SCAN_REGULAR_MASK)
   return -EBUSY;
  return iwl_mvm_scan_stop(mvm, 128, 1);
 case 128:
  if (mvm->scan_status & IWL_MVM_SCAN_SCHED_MASK)
   return -EBUSY;
  return iwl_mvm_scan_stop(mvm, 129, 1);
 case 130:





  if (!unified_image)
   return 0;







  if (mvm->scan_status & IWL_MVM_SCAN_REGULAR_MASK)
   return iwl_mvm_scan_stop(mvm, 129,
       1);
  if (mvm->scan_status & IWL_MVM_SCAN_SCHED_MASK)
   return iwl_mvm_scan_stop(mvm, 128,
       1);




 default:
  WARN_ON(1);
  break;
 }

 return -EIO;
}
