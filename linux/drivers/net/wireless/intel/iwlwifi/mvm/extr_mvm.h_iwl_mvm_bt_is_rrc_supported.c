
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 scalar_t__ IWL_MVM_BT_COEX_RRC ;
 int IWL_UCODE_TLV_CAPA_BT_COEX_RRC ;
 scalar_t__ fw_has_capa (int *,int ) ;

__attribute__((used)) static inline bool iwl_mvm_bt_is_rrc_supported(struct iwl_mvm *mvm)
{
 return fw_has_capa(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_BT_COEX_RRC) &&
  IWL_MVM_BT_COEX_RRC;
}
