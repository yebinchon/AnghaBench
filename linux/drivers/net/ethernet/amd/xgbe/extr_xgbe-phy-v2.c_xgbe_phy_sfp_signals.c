
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int netdev; int dev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int sfp_gpio_inputs; int sfp_mod_absent; int sfp_gpio_address; } ;
typedef int gpio_reg ;
typedef int gpio_ports ;


 int dev_err_once (int ,char*,int ) ;
 int netdev_name (int ) ;
 int xgbe_phy_check_sfp_mod_absent (struct xgbe_phy_data*) ;
 int xgbe_phy_i2c_read (struct xgbe_prv_data*,int ,int*,int,int*,int) ;

__attribute__((used)) static void xgbe_phy_sfp_signals(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 u8 gpio_reg, gpio_ports[2];
 int ret;


 gpio_reg = 0;
 ret = xgbe_phy_i2c_read(pdata, phy_data->sfp_gpio_address,
    &gpio_reg, sizeof(gpio_reg),
    gpio_ports, sizeof(gpio_ports));
 if (ret) {
  dev_err_once(pdata->dev, "%s: I2C error reading SFP GPIOs\n",
        netdev_name(pdata->netdev));
  return;
 }

 phy_data->sfp_gpio_inputs = (gpio_ports[1] << 8) | gpio_ports[0];

 phy_data->sfp_mod_absent = xgbe_phy_check_sfp_mod_absent(phy_data);
}
