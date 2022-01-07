
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qt202x_phy_data {int phy_mode; } ;
struct TYPE_2__ {int prtad; } ;
struct ef4_nic {scalar_t__ phy_type; int phy_mode; scalar_t__ loopback_mode; TYPE_1__ mdio; struct qt202x_phy_data* phy_data; } ;


 scalar_t__ LOOPBACK_PCS ;
 scalar_t__ LOOPBACK_PMAPMD ;
 int MDIO_MMD_PMAPMD ;
 int PHY_MODE_LOW_POWER ;
 int PHY_MODE_TX_DISABLED ;
 scalar_t__ PHY_TYPE_QT2025C ;
 int PMA_PMD_FTX_CTRL2_REG ;
 int PMA_PMD_FTX_STATIC_LBN ;
 int ef4_mdio_phy_reconfigure (struct ef4_nic*) ;
 int ef4_mdio_transmit_disable (struct ef4_nic*) ;
 int mdio_set_flag (TYPE_1__*,int ,int ,int ,int,int) ;
 int qt2025c_select_phy_mode (struct ef4_nic*) ;
 int qt202x_reset_phy (struct ef4_nic*) ;

__attribute__((used)) static int qt202x_phy_reconfigure(struct ef4_nic *efx)
{
 struct qt202x_phy_data *phy_data = efx->phy_data;

 if (efx->phy_type == PHY_TYPE_QT2025C) {
  int rc = qt2025c_select_phy_mode(efx);
  if (rc)
   return rc;






  mdio_set_flag(
   &efx->mdio, efx->mdio.prtad, MDIO_MMD_PMAPMD,
   PMA_PMD_FTX_CTRL2_REG, 1 << PMA_PMD_FTX_STATIC_LBN,
   efx->phy_mode & PHY_MODE_TX_DISABLED ||
   efx->phy_mode & PHY_MODE_LOW_POWER ||
   efx->loopback_mode == LOOPBACK_PCS ||
   efx->loopback_mode == LOOPBACK_PMAPMD);
 } else {

  if (!(efx->phy_mode & PHY_MODE_TX_DISABLED) &&
      (phy_data->phy_mode & PHY_MODE_TX_DISABLED))
   qt202x_reset_phy(efx);

  ef4_mdio_transmit_disable(efx);
 }

 ef4_mdio_phy_reconfigure(efx);

 phy_data->phy_mode = efx->phy_mode;

 return 0;
}
