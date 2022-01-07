
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {TYPE_2__* trans; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;


 scalar_t__ IWL_DEVICE_FAMILY_22000 ;

__attribute__((used)) static inline bool iwl_mvm_has_unified_ucode(struct iwl_mvm *mvm)
{

 return mvm->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000;
}
