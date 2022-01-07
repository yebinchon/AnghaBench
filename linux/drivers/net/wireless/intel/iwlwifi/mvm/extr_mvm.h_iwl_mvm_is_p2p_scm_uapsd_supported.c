
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* fw; } ;
struct TYPE_4__ {int uapsd_disable; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int IWL_DISABLE_UAPSD_P2P_CLIENT ;
 int IWL_UCODE_TLV_CAPA_P2P_SCM_UAPSD ;
 scalar_t__ fw_has_capa (int *,int ) ;
 TYPE_2__ iwlwifi_mod_params ;

__attribute__((used)) static inline
bool iwl_mvm_is_p2p_scm_uapsd_supported(struct iwl_mvm *mvm)
{
 return fw_has_capa(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_P2P_SCM_UAPSD) &&
  !(iwlwifi_mod_params.uapsd_disable &
    IWL_DISABLE_UAPSD_P2P_CLIENT);
}
