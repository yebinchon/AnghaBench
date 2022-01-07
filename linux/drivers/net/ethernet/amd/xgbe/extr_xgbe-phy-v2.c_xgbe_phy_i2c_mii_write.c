
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct xgbe_prv_data {int dummy; } ;
typedef int mii_data ;
typedef int __be16 ;


 int XGBE_SFP_PHY_ADDRESS ;
 int cpu_to_be16 (int ) ;
 int xgbe_phy_i2c_write (struct xgbe_prv_data*,int ,int*,int) ;
 int xgbe_phy_sfp_get_mux (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_put_mux (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_i2c_mii_write(struct xgbe_prv_data *pdata, int reg, u16 val)
{
 __be16 *mii_val;
 u8 mii_data[3];
 int ret;

 ret = xgbe_phy_sfp_get_mux(pdata);
 if (ret)
  return ret;

 mii_data[0] = reg & 0xff;
 mii_val = (__be16 *)&mii_data[1];
 *mii_val = cpu_to_be16(val);

 ret = xgbe_phy_i2c_write(pdata, XGBE_SFP_PHY_ADDRESS,
     mii_data, sizeof(mii_data));

 xgbe_phy_sfp_put_mux(pdata);

 return ret;
}
