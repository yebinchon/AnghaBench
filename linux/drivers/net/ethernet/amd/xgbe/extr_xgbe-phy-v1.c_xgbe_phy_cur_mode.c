
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ speed_set; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int MDIO_CTRL2 ;
 int MDIO_MMD_PCS ;
 unsigned int MDIO_PCS_CTRL2_10GBR ;
 unsigned int MDIO_PCS_CTRL2_TYPE ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX_1000 ;
 int XGBE_MODE_KX_2500 ;
 scalar_t__ XGBE_SPEEDSET_2500_10000 ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_cur_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 enum xgbe_mode mode;
 unsigned int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL2);
 reg &= MDIO_PCS_CTRL2_TYPE;

 if (reg == MDIO_PCS_CTRL2_10GBR) {
  mode = XGBE_MODE_KR;
 } else {
  if (phy_data->speed_set == XGBE_SPEEDSET_2500_10000)
   mode = XGBE_MODE_KX_2500;
  else
   mode = XGBE_MODE_KX_1000;
 }

 return mode;
}
