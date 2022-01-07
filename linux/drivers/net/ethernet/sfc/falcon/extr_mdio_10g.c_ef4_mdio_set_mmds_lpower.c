
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 unsigned int MDIO_DEVS_AN ;
 int ef4_mdio_set_mmd_lpower (struct ef4_nic*,int,int) ;

void ef4_mdio_set_mmds_lpower(struct ef4_nic *efx,
         int low_power, unsigned int mmd_mask)
{
 int mmd = 0;
 mmd_mask &= ~MDIO_DEVS_AN;
 while (mmd_mask) {
  if (mmd_mask & 1)
   ef4_mdio_set_mmd_lpower(efx, low_power, mmd);
  mmd_mask = (mmd_mask >> 1);
  mmd++;
 }
}
