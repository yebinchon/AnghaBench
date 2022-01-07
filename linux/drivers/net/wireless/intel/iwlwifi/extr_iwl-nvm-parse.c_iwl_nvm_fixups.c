
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int ANT_B ;
 scalar_t__ IWL_4165_DEVICE_ID ;
 unsigned int NVM_SECTION_TYPE_PHY_SKU ;
 int NVM_SKU_CAP_MIMO_DISABLE ;

void iwl_nvm_fixups(u32 hw_id, unsigned int section, u8 *data,
      unsigned int len)
{



 if (section == NVM_SECTION_TYPE_PHY_SKU &&
     hw_id == 0x5501 && data && len >= 5 &&
     (data[4] & BIT(5)))

  data[3] = ANT_B | (ANT_B << 4);
}
