
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_UCODE_TLV_API_NEW_RX_STATS ;
 int fw_has_api (int *,int ) ;

__attribute__((used)) static inline bool iwl_mvm_has_new_rx_stats_api(struct iwl_mvm *mvm)
{
 return fw_has_api(&mvm->fw->ucode_capa,
     IWL_UCODE_TLV_API_NEW_RX_STATS);
}
