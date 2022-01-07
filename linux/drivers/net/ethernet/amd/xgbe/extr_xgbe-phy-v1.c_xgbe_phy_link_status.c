
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MDIO_MMD_PCS ;
 int MDIO_STAT1 ;
 unsigned int MDIO_STAT1_LSTATUS ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;

__attribute__((used)) static int xgbe_phy_link_status(struct xgbe_prv_data *pdata, int *an_restart)
{
 unsigned int reg;

 *an_restart = 0;




 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_STAT1);
 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_STAT1);

 return (reg & MDIO_STAT1_LSTATUS) ? 1 : 0;
}
