
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_sfp_eeprom {int* base; } ;
struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ sfp_cable; int sfp_cable_len; int sfp_base; int sfp_speed; int sfp_rx_los; int sfp_tx_fault; struct xgbe_sfp_eeprom sfp_eeprom; } ;
 size_t XGBE_SFP_BASE_10GBE_CC ;
 int XGBE_SFP_BASE_10GBE_CC_ER ;
 int XGBE_SFP_BASE_10GBE_CC_LR ;
 int XGBE_SFP_BASE_10GBE_CC_LRM ;
 int XGBE_SFP_BASE_10GBE_CC_SR ;
 size_t XGBE_SFP_BASE_1GBE_CC ;
 int XGBE_SFP_BASE_1GBE_CC_CX ;
 int XGBE_SFP_BASE_1GBE_CC_LX ;
 int XGBE_SFP_BASE_1GBE_CC_SX ;
 int XGBE_SFP_BASE_1GBE_CC_T ;
 size_t XGBE_SFP_BASE_CABLE ;
 int XGBE_SFP_BASE_CABLE_PASSIVE ;
 size_t XGBE_SFP_BASE_CU_CABLE_LEN ;
 size_t XGBE_SFP_BASE_EXT_ID ;
 size_t XGBE_SFP_BASE_ID ;
 scalar_t__ XGBE_SFP_CABLE_ACTIVE ;
 scalar_t__ XGBE_SFP_CABLE_PASSIVE ;
 int XGBE_SFP_EXT_ID_SFP ;
 int XGBE_SFP_ID_SFP ;
 int XGBE_SFP_SPEED_1000 ;
 int XGBE_SFP_SPEED_10000 ;
 int XGBE_SFP_SPEED_100_1000 ;
 int xgbe_phy_check_sfp_rx_los (struct xgbe_phy_data*) ;
 int xgbe_phy_check_sfp_tx_fault (struct xgbe_phy_data*) ;
 scalar_t__ xgbe_phy_sfp_bit_rate (struct xgbe_sfp_eeprom*,int ) ;

__attribute__((used)) static void xgbe_phy_sfp_parse_eeprom(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 struct xgbe_sfp_eeprom *sfp_eeprom = &phy_data->sfp_eeprom;
 u8 *sfp_base;

 sfp_base = sfp_eeprom->base;

 if (sfp_base[XGBE_SFP_BASE_ID] != XGBE_SFP_ID_SFP)
  return;

 if (sfp_base[XGBE_SFP_BASE_EXT_ID] != XGBE_SFP_EXT_ID_SFP)
  return;


 phy_data->sfp_tx_fault = xgbe_phy_check_sfp_tx_fault(phy_data);
 phy_data->sfp_rx_los = xgbe_phy_check_sfp_rx_los(phy_data);


 if (sfp_base[XGBE_SFP_BASE_CABLE] & XGBE_SFP_BASE_CABLE_PASSIVE) {
  phy_data->sfp_cable = XGBE_SFP_CABLE_PASSIVE;
  phy_data->sfp_cable_len = sfp_base[XGBE_SFP_BASE_CU_CABLE_LEN];
 } else {
  phy_data->sfp_cable = XGBE_SFP_CABLE_ACTIVE;
 }


 if (sfp_base[XGBE_SFP_BASE_10GBE_CC] & XGBE_SFP_BASE_10GBE_CC_SR)
  phy_data->sfp_base = 132;
 else if (sfp_base[XGBE_SFP_BASE_10GBE_CC] & XGBE_SFP_BASE_10GBE_CC_LR)
  phy_data->sfp_base = 134;
 else if (sfp_base[XGBE_SFP_BASE_10GBE_CC] & XGBE_SFP_BASE_10GBE_CC_LRM)
  phy_data->sfp_base = 133;
 else if (sfp_base[XGBE_SFP_BASE_10GBE_CC] & XGBE_SFP_BASE_10GBE_CC_ER)
  phy_data->sfp_base = 135;
 else if (sfp_base[XGBE_SFP_BASE_1GBE_CC] & XGBE_SFP_BASE_1GBE_CC_SX)
  phy_data->sfp_base = 129;
 else if (sfp_base[XGBE_SFP_BASE_1GBE_CC] & XGBE_SFP_BASE_1GBE_CC_LX)
  phy_data->sfp_base = 130;
 else if (sfp_base[XGBE_SFP_BASE_1GBE_CC] & XGBE_SFP_BASE_1GBE_CC_CX)
  phy_data->sfp_base = 131;
 else if (sfp_base[XGBE_SFP_BASE_1GBE_CC] & XGBE_SFP_BASE_1GBE_CC_T)
  phy_data->sfp_base = 128;
 else if ((phy_data->sfp_cable == XGBE_SFP_CABLE_PASSIVE) &&
   xgbe_phy_sfp_bit_rate(sfp_eeprom, XGBE_SFP_SPEED_10000))
  phy_data->sfp_base = 136;

 switch (phy_data->sfp_base) {
 case 128:
  phy_data->sfp_speed = XGBE_SFP_SPEED_100_1000;
  break;
 case 129:
 case 130:
 case 131:
  phy_data->sfp_speed = XGBE_SFP_SPEED_1000;
  break;
 case 132:
 case 134:
 case 133:
 case 135:
 case 136:
  phy_data->sfp_speed = XGBE_SFP_SPEED_10000;
  break;
 default:
  break;
 }
}
