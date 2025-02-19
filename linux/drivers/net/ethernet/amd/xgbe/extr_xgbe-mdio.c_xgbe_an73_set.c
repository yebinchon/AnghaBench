
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 unsigned int MDIO_AN_CTRL1_ENABLE ;
 unsigned int MDIO_AN_CTRL1_RESTART ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_10GBR_PMD_CTRL ;
 unsigned int XGBE_KR_TRAINING_ENABLE ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static void xgbe_an73_set(struct xgbe_prv_data *pdata, bool enable,
     bool restart)
{
 unsigned int reg;


 reg = XMDIO_READ(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL);
 reg &= ~XGBE_KR_TRAINING_ENABLE;
 XMDIO_WRITE(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL, reg);


 reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_CTRL1);
 reg &= ~MDIO_AN_CTRL1_ENABLE;

 if (enable)
  reg |= MDIO_AN_CTRL1_ENABLE;

 if (restart)
  reg |= MDIO_AN_CTRL1_RESTART;

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_CTRL1, reg);
}
