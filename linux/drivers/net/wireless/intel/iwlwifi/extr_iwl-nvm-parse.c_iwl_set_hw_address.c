
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans {int dummy; } ;
struct iwl_nvm_data {int * hw_addr; } ;
struct iwl_cfg {scalar_t__ nvm_type; scalar_t__ mac_addr_from_csr; } ;
typedef int __le16 ;
typedef int __be16 ;


 int EINVAL ;
 int HW_ADDR ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int IWL_INFO (struct iwl_trans*,char*,int *) ;
 scalar_t__ IWL_NVM_EXT ;
 int is_valid_ether_addr (int *) ;
 int iwl_set_hw_address_family_8000 (struct iwl_trans*,struct iwl_cfg const*,struct iwl_nvm_data*,int const*,int const*) ;
 int iwl_set_hw_address_from_csr (struct iwl_trans*,struct iwl_nvm_data*) ;

__attribute__((used)) static int iwl_set_hw_address(struct iwl_trans *trans,
         const struct iwl_cfg *cfg,
         struct iwl_nvm_data *data, const __be16 *nvm_hw,
         const __le16 *mac_override)
{
 if (cfg->mac_addr_from_csr) {
  iwl_set_hw_address_from_csr(trans, data);
 } else if (cfg->nvm_type != IWL_NVM_EXT) {
  const u8 *hw_addr = (const u8 *)(nvm_hw + HW_ADDR);


  data->hw_addr[0] = hw_addr[1];
  data->hw_addr[1] = hw_addr[0];
  data->hw_addr[2] = hw_addr[3];
  data->hw_addr[3] = hw_addr[2];
  data->hw_addr[4] = hw_addr[5];
  data->hw_addr[5] = hw_addr[4];
 } else {
  iwl_set_hw_address_family_8000(trans, cfg, data,
            mac_override, nvm_hw);
 }

 if (!is_valid_ether_addr(data->hw_addr)) {
  IWL_ERR(trans, "no valid mac address was found\n");
  return -EINVAL;
 }

 IWL_INFO(trans, "base HW address: %pM\n", data->hw_addr);

 return 0;
}
