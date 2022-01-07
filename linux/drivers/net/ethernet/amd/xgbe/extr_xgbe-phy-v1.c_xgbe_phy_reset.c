
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int ETIMEDOUT ;
 int MDIO_CTRL1 ;
 unsigned int MDIO_CTRL1_RESET ;
 int MDIO_MMD_PCS ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static int xgbe_phy_reset(struct xgbe_prv_data *pdata)
{
 unsigned int reg, count;


 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
 reg |= MDIO_CTRL1_RESET;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

 count = 50;
 do {
  msleep(20);
  reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
 } while ((reg & MDIO_CTRL1_RESET) && --count);

 if (reg & MDIO_CTRL1_RESET)
  return -ETIMEDOUT;

 return 0;
}
