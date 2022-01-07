
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MDIO_CTRL1 ;
 int MDIO_MMD_VEND2 ;
 unsigned int MDIO_VEND2_CTRL1_AN_ENABLE ;
 unsigned int MDIO_VEND2_CTRL1_AN_RESTART ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static void xgbe_an37_set(struct xgbe_prv_data *pdata, bool enable,
     bool restart)
{
 unsigned int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_VEND2, MDIO_CTRL1);
 reg &= ~MDIO_VEND2_CTRL1_AN_ENABLE;

 if (enable)
  reg |= MDIO_VEND2_CTRL1_AN_ENABLE;

 if (restart)
  reg |= MDIO_VEND2_CTRL1_AN_RESTART;

 XMDIO_WRITE(pdata, MDIO_MMD_VEND2, MDIO_CTRL1, reg);
}
