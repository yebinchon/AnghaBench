
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int sfp_mod_absent; int sfp_eeprom; scalar_t__ sfp_phy_avail; } ;


 int memset (int *,int ,int) ;
 int xgbe_phy_free_phy_device (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_sfp_mod_absent(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 xgbe_phy_free_phy_device(pdata);

 phy_data->sfp_mod_absent = 1;
 phy_data->sfp_phy_avail = 0;
 memset(&phy_data->sfp_eeprom, 0, sizeof(phy_data->sfp_eeprom));
}
