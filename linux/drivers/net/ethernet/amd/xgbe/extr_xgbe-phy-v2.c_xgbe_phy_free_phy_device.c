
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int * phydev; } ;


 int phy_detach (int *) ;
 int phy_device_free (int *) ;
 int phy_device_remove (int *) ;

__attribute__((used)) static void xgbe_phy_free_phy_device(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 if (phy_data->phydev) {
  phy_detach(phy_data->phydev);
  phy_device_remove(phy_data->phydev);
  phy_device_free(phy_data->phydev);
  phy_data->phydev = ((void*)0);
 }
}
