
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int sfp_gpio_mask; int sfp_gpio_inputs; int sfp_gpio_mod_absent; } ;


 int XGBE_GPIO_NO_MOD_ABSENT ;

__attribute__((used)) static bool xgbe_phy_check_sfp_mod_absent(struct xgbe_phy_data *phy_data)
{
 if (phy_data->sfp_gpio_mask & XGBE_GPIO_NO_MOD_ABSENT)
  return 0;

 if (phy_data->sfp_gpio_inputs & (1 << phy_data->sfp_gpio_mod_absent))
  return 1;

 return 0;
}
