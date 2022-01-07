
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ loopback_mode; } ;


 int LOOPBACK_NEAR_LBN ;
 scalar_t__ LOOPBACK_PHYXS ;
 int MDIO_MMD_PHYXS ;
 int PHYXS_TEST1 ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int,int) ;

__attribute__((used)) static void tenxpress_ext_loopback(struct ef4_nic *efx)
{
 ef4_mdio_set_flag(efx, MDIO_MMD_PHYXS, PHYXS_TEST1,
     1 << LOOPBACK_NEAR_LBN,
     efx->loopback_mode == LOOPBACK_PHYXS);
}
