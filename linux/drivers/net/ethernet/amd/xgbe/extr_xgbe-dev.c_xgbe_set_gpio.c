
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int EINVAL ;
 int MAC_GPIOSR ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;

__attribute__((used)) static int xgbe_set_gpio(struct xgbe_prv_data *pdata, unsigned int gpio)
{
 unsigned int reg;

 if (gpio > 15)
  return -EINVAL;

 reg = XGMAC_IOREAD(pdata, MAC_GPIOSR);

 reg |= (1 << (gpio + 16));
 XGMAC_IOWRITE(pdata, MAC_GPIOSR, reg);

 return 0;
}
