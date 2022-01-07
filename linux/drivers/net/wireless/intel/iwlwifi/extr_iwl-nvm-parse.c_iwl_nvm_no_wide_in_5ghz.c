
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iwl_trans {int dev; TYPE_1__* trans_cfg; } ;
struct iwl_cfg {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int IWL_DEBUG_EEPROM (int ,char*,int,int) ;
 scalar_t__ IWL_DEVICE_FAMILY_7000 ;
 int SUBSYSTEM_ID ;
 int be16_to_cpup (int const*) ;

__attribute__((used)) static bool
iwl_nvm_no_wide_in_5ghz(struct iwl_trans *trans, const struct iwl_cfg *cfg,
   const __be16 *nvm_hw)
{
 if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {




  u16 subsystem_id = be16_to_cpup(nvm_hw + SUBSYSTEM_ID);
  u8 sku = (subsystem_id & 0x1e) >> 1;

  if (sku == 5 || sku == 9) {
   IWL_DEBUG_EEPROM(trans->dev,
      "disabling wide channels in 5GHz (0x%0x %d)\n",
      subsystem_id, sku);
   return 1;
  }
 }

 return 0;
}
