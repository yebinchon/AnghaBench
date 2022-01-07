
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_nic {scalar_t__ phy_type; int net_dev; } ;


 int MDIO_MMD_PHYXS ;
 scalar_t__ PHY_TYPE_QT2025C ;
 int ef4_mdio_id_model (int ) ;
 int ef4_mdio_id_oui (int ) ;
 int ef4_mdio_id_rev (int ) ;
 int ef4_mdio_read_id (struct ef4_nic*,int ) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int netif_info (struct ef4_nic*,int ,int ,char*,int ,int ,int ,int ) ;
 int probe ;
 int qt2025c_firmware_id (struct ef4_nic*) ;
 int qt202x_reset_phy (struct ef4_nic*) ;

__attribute__((used)) static int qt202x_phy_init(struct ef4_nic *efx)
{
 u32 devid;
 int rc;

 rc = qt202x_reset_phy(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "PHY init failed\n");
  return rc;
 }

 devid = ef4_mdio_read_id(efx, MDIO_MMD_PHYXS);
 netif_info(efx, probe, efx->net_dev,
     "PHY ID reg %x (OUI %06x model %02x revision %x)\n",
     devid, ef4_mdio_id_oui(devid), ef4_mdio_id_model(devid),
     ef4_mdio_id_rev(devid));

 if (efx->phy_type == PHY_TYPE_QT2025C)
  qt2025c_firmware_id(efx);

 return 0;
}
