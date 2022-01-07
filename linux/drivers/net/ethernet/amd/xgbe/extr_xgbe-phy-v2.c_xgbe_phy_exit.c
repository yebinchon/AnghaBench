
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int mii; } ;


 int mdiobus_unregister (int ) ;

__attribute__((used)) static void xgbe_phy_exit(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;


 mdiobus_unregister(phy_data->mii);
}
