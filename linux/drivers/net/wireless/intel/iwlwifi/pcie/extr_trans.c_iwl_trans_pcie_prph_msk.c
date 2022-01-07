
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 scalar_t__ IWL_DEVICE_FAMILY_22560 ;

__attribute__((used)) static u32 iwl_trans_pcie_prph_msk(struct iwl_trans *trans)
{
 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
  return 0x00FFFFFF;
 else
  return 0x000FFFFF;
}
