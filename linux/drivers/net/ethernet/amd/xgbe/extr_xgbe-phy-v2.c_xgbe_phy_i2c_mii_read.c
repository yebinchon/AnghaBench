
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int dummy; } ;
typedef int mii_val ;
typedef int mii_reg ;
typedef int __be16 ;


 int XGBE_SFP_PHY_ADDRESS ;
 int be16_to_cpu (int ) ;
 int xgbe_phy_i2c_read (struct xgbe_prv_data*,int ,int*,int,int *,int) ;
 int xgbe_phy_sfp_get_mux (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_put_mux (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_i2c_mii_read(struct xgbe_prv_data *pdata, int reg)
{
 __be16 mii_val;
 u8 mii_reg;
 int ret;

 ret = xgbe_phy_sfp_get_mux(pdata);
 if (ret)
  return ret;

 mii_reg = reg;
 ret = xgbe_phy_i2c_read(pdata, XGBE_SFP_PHY_ADDRESS,
    &mii_reg, sizeof(mii_reg),
    &mii_val, sizeof(mii_val));
 if (!ret)
  ret = be16_to_cpu(mii_val);

 xgbe_phy_sfp_put_mux(pdata);

 return ret;
}
