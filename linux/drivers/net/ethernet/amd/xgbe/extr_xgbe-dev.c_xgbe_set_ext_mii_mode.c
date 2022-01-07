
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mdio_mode { ____Placeholder_xgbe_mdio_mode } xgbe_mdio_mode ;


 int EINVAL ;
 int MAC_MDIOCL22R ;


 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 unsigned int XGMAC_MAX_C22_PORT ;

__attribute__((used)) static int xgbe_set_ext_mii_mode(struct xgbe_prv_data *pdata, unsigned int port,
     enum xgbe_mdio_mode mode)
{
 unsigned int reg_val = XGMAC_IOREAD(pdata, MAC_MDIOCL22R);

 switch (mode) {
 case 129:
  if (port > XGMAC_MAX_C22_PORT)
   return -EINVAL;
  reg_val |= (1 << port);
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 XGMAC_IOWRITE(pdata, MAC_MDIOCL22R, reg_val);

 return 0;
}
