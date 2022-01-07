
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* extd; } ;
struct xgbe_phy_data {int sfp_gpio_mask; int sfp_gpio_inputs; int sfp_gpio_tx_fault; TYPE_1__ sfp_eeprom; } ;


 int XGBE_GPIO_NO_TX_FAULT ;
 size_t XGBE_SFP_EXTD_OPT1 ;
 int XGBE_SFP_EXTD_OPT1_TX_FAULT ;

__attribute__((used)) static bool xgbe_phy_check_sfp_tx_fault(struct xgbe_phy_data *phy_data)
{
 u8 *sfp_extd = phy_data->sfp_eeprom.extd;

 if (!(sfp_extd[XGBE_SFP_EXTD_OPT1] & XGBE_SFP_EXTD_OPT1_TX_FAULT))
  return 0;

 if (phy_data->sfp_gpio_mask & XGBE_GPIO_NO_TX_FAULT)
  return 0;

 if (phy_data->sfp_gpio_inputs & (1 << phy_data->sfp_gpio_tx_fault))
  return 1;

 return 0;
}
