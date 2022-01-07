
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_nvm_version {int oem_major; int oem_minor; int oem_release; int etk_id; int or_major; int or_build; int or_patch; scalar_t__ or_valid; scalar_t__ oem_valid; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int eeprom_id; struct ixgbe_hw hw; } ;


 int ixgbe_get_etk_id (struct ixgbe_hw*,struct ixgbe_nvm_version*) ;
 int ixgbe_get_oem_prod_version (struct ixgbe_hw*,struct ixgbe_nvm_version*) ;
 int ixgbe_get_orom_version (struct ixgbe_hw*,struct ixgbe_nvm_version*) ;
 int snprintf (int ,int,char*,int,...) ;

__attribute__((used)) static void ixgbe_set_fw_version(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_nvm_version nvm_ver;

 ixgbe_get_oem_prod_version(hw, &nvm_ver);
 if (nvm_ver.oem_valid) {
  snprintf(adapter->eeprom_id, sizeof(adapter->eeprom_id),
    "%x.%x.%x", nvm_ver.oem_major, nvm_ver.oem_minor,
    nvm_ver.oem_release);
  return;
 }

 ixgbe_get_etk_id(hw, &nvm_ver);
 ixgbe_get_orom_version(hw, &nvm_ver);

 if (nvm_ver.or_valid) {
  snprintf(adapter->eeprom_id, sizeof(adapter->eeprom_id),
    "0x%08x, %d.%d.%d", nvm_ver.etk_id, nvm_ver.or_major,
    nvm_ver.or_build, nvm_ver.or_patch);
  return;
 }


 snprintf(adapter->eeprom_id, sizeof(adapter->eeprom_id),
   "0x%08x", nvm_ver.etk_id);
}
