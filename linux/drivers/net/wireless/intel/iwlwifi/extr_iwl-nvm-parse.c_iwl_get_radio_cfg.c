
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_cfg {scalar_t__ nvm_type; } ;
typedef int __le32 ;
typedef int __le16 ;


 scalar_t__ IWL_NVM_EXT ;
 int RADIO_CFG ;
 int RADIO_CFG_FAMILY_EXT_NVM ;
 int le16_to_cpup (int const*) ;
 int le32_to_cpup (int *) ;

__attribute__((used)) static int iwl_get_radio_cfg(const struct iwl_cfg *cfg, const __le16 *nvm_sw,
        const __le16 *phy_sku)
{
 if (cfg->nvm_type != IWL_NVM_EXT)
  return le16_to_cpup(nvm_sw + RADIO_CFG);

 return le32_to_cpup((__le32 *)(phy_sku + RADIO_CFG_FAMILY_EXT_NVM));

}
