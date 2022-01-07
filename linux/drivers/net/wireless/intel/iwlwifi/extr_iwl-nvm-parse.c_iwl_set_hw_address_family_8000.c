
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans {int dummy; } ;
struct iwl_nvm_data {int hw_addr; } ;
struct iwl_cfg {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;
typedef int __be16 ;


 int ETH_ALEN ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int MAC_ADDRESS_OVERRIDE_EXT_NVM ;
 int WFMP_MAC_ADDR_0 ;
 int WFMP_MAC_ADDR_1 ;
 int cpu_to_le32 (int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int iwl_flip_hw_address (int ,int ,int ) ;
 int iwl_trans_read_prph (struct iwl_trans*,int ) ;
 scalar_t__ memcmp (int const*,int const*,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static void iwl_set_hw_address_family_8000(struct iwl_trans *trans,
        const struct iwl_cfg *cfg,
        struct iwl_nvm_data *data,
        const __le16 *mac_override,
        const __be16 *nvm_hw)
{
 const u8 *hw_addr;

 if (mac_override) {
  static const u8 reserved_mac[] = {
   0x02, 0xcc, 0xaa, 0xff, 0xee, 0x00
  };

  hw_addr = (const u8 *)(mac_override +
     MAC_ADDRESS_OVERRIDE_EXT_NVM);





  memcpy(data->hw_addr, hw_addr, ETH_ALEN);





  if (is_valid_ether_addr(data->hw_addr) &&
      memcmp(reserved_mac, hw_addr, ETH_ALEN) != 0)
   return;

  IWL_ERR(trans,
   "mac address from nvm override section is not valid\n");
 }

 if (nvm_hw) {

  __le32 mac_addr0 = cpu_to_le32(iwl_trans_read_prph(trans,
      WFMP_MAC_ADDR_0));
  __le32 mac_addr1 = cpu_to_le32(iwl_trans_read_prph(trans,
      WFMP_MAC_ADDR_1));

  iwl_flip_hw_address(mac_addr0, mac_addr1, data->hw_addr);

  return;
 }

 IWL_ERR(trans, "mac address is not found\n");
}
