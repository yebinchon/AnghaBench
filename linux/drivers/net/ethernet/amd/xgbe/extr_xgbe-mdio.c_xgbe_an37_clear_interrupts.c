
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MDIO_MMD_VEND2 ;
 int MDIO_VEND2_AN_STAT ;
 int XGBE_AN_CL37_INT_MASK ;
 int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_an37_clear_interrupts(struct xgbe_prv_data *pdata)
{
 int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT);
 reg &= ~XGBE_AN_CL37_INT_MASK;
 XMDIO_WRITE(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT, reg);
}
