
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int phy_mode; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_TXDIS ;
 int MDIO_PMD_TXDIS_GLOBAL ;
 int PHY_MODE_TX_DISABLED ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int ,int) ;

void ef4_mdio_transmit_disable(struct ef4_nic *efx)
{
 ef4_mdio_set_flag(efx, MDIO_MMD_PMAPMD,
     MDIO_PMA_TXDIS, MDIO_PMD_TXDIS_GLOBAL,
     efx->phy_mode & PHY_MODE_TX_DISABLED);
}
