
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MDIO_AN_INT ;
 int MDIO_MMD_AN ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static void xgbe_an73_clear_interrupts(struct xgbe_prv_data *pdata)
{
 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);
}
