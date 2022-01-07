
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_mvm {TYPE_3__* cfg; TYPE_2__* fw; TYPE_1__* nvm_data; } ;
struct TYPE_8__ {scalar_t__ lar_disable; } ;
struct TYPE_7__ {scalar_t__ nvm_type; } ;
struct TYPE_6__ {int ucode_capa; } ;
struct TYPE_5__ {int lar_enabled; } ;


 scalar_t__ IWL_NVM_EXT ;
 int IWL_UCODE_TLV_CAPA_LAR_SUPPORT ;
 int fw_has_capa (int *,int ) ;
 TYPE_4__ iwlwifi_mod_params ;

__attribute__((used)) static inline bool iwl_mvm_is_lar_supported(struct iwl_mvm *mvm)
{
 bool nvm_lar = mvm->nvm_data->lar_enabled;
 bool tlv_lar = fw_has_capa(&mvm->fw->ucode_capa,
       IWL_UCODE_TLV_CAPA_LAR_SUPPORT);

 if (iwlwifi_mod_params.lar_disable)
  return 0;





 if (mvm->cfg->nvm_type == IWL_NVM_EXT)
  return nvm_lar && tlv_lar;
 else
  return tlv_lar;
}
