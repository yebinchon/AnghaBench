
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ media_type; int mac_type; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 int EEPROM_RESERVED_WORD ;
 int EEPROM_SERDES_AMPLITUDE ;
 int EEPROM_SERDES_AMPLITUDE_MASK ;
 int M88E1000_PHY_EXT_CTRL ;


 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_read_eeprom (struct e1000_hw*,int ,int,int *) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_adjust_serdes_amplitude(struct e1000_hw *hw)
{
 u16 eeprom_data;
 s32 ret_val;

 if (hw->media_type != e1000_media_type_internal_serdes)
  return E1000_SUCCESS;

 switch (hw->mac_type) {
 case 129:
 case 128:
  break;
 default:
  return E1000_SUCCESS;
 }

 ret_val = e1000_read_eeprom(hw, EEPROM_SERDES_AMPLITUDE, 1,
        &eeprom_data);
 if (ret_val)
  return ret_val;

 if (eeprom_data != EEPROM_RESERVED_WORD) {

  eeprom_data &= EEPROM_SERDES_AMPLITUDE_MASK;
  ret_val =
      e1000_write_phy_reg(hw, M88E1000_PHY_EXT_CTRL, eeprom_data);
  if (ret_val)
   return ret_val;
 }

 return E1000_SUCCESS;
}
