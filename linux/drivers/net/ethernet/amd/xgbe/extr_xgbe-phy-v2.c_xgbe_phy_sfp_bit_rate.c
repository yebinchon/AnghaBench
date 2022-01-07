
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct xgbe_sfp_eeprom {scalar_t__* base; } ;
typedef enum xgbe_sfp_speed { ____Placeholder_xgbe_sfp_speed } xgbe_sfp_speed ;


 size_t XGBE_SFP_BASE_BR ;
 scalar_t__ XGBE_SFP_BASE_BR_10GBE_MAX ;
 scalar_t__ XGBE_SFP_BASE_BR_10GBE_MIN ;
 scalar_t__ XGBE_SFP_BASE_BR_1GBE_MAX ;
 scalar_t__ XGBE_SFP_BASE_BR_1GBE_MIN ;



__attribute__((used)) static bool xgbe_phy_sfp_bit_rate(struct xgbe_sfp_eeprom *sfp_eeprom,
      enum xgbe_sfp_speed sfp_speed)
{
 u8 *sfp_base, min, max;

 sfp_base = sfp_eeprom->base;

 switch (sfp_speed) {
 case 129:
  min = XGBE_SFP_BASE_BR_1GBE_MIN;
  max = XGBE_SFP_BASE_BR_1GBE_MAX;
  break;
 case 128:
  min = XGBE_SFP_BASE_BR_10GBE_MIN;
  max = XGBE_SFP_BASE_BR_10GBE_MAX;
  break;
 default:
  return 0;
 }

 return ((sfp_base[XGBE_SFP_BASE_BR] >= min) &&
  (sfp_base[XGBE_SFP_BASE_BR] <= max));
}
