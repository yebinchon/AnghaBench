
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int mdio_reset_gpio; int mdio_reset_addr; } ;
typedef int gpio_reg ;
typedef int gpio_ports ;
typedef int gpio_data ;


 int xgbe_phy_i2c_read (struct xgbe_prv_data*,int ,int*,int,int*,int) ;
 int xgbe_phy_i2c_write (struct xgbe_prv_data*,int ,int*,int) ;

__attribute__((used)) static int xgbe_phy_i2c_mdio_reset(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 u8 gpio_reg, gpio_ports[2], gpio_data[3];
 int ret;


 gpio_reg = 2;
 ret = xgbe_phy_i2c_read(pdata, phy_data->mdio_reset_addr,
    &gpio_reg, sizeof(gpio_reg),
    gpio_ports, sizeof(gpio_ports));
 if (ret)
  return ret;


 gpio_data[0] = 2;
 gpio_data[1] = gpio_ports[0];
 gpio_data[2] = gpio_ports[1];


 if (phy_data->mdio_reset_gpio < 8)
  gpio_data[1] |= (1 << (phy_data->mdio_reset_gpio % 8));
 else
  gpio_data[2] |= (1 << (phy_data->mdio_reset_gpio % 8));


 ret = xgbe_phy_i2c_write(pdata, phy_data->mdio_reset_addr,
     gpio_data, sizeof(gpio_data));
 if (ret)
  return ret;


 if (phy_data->mdio_reset_gpio < 8)
  gpio_data[1] &= ~(1 << (phy_data->mdio_reset_gpio % 8));
 else
  gpio_data[2] &= ~(1 << (phy_data->mdio_reset_gpio % 8));


 ret = xgbe_phy_i2c_write(pdata, phy_data->mdio_reset_addr,
     gpio_data, sizeof(gpio_data));

 return ret;
}
