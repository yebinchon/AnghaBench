
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qt202x_phy_data {int firmware_ver; } ;
struct ef4_nic {int net_dev; struct qt202x_phy_data* phy_data; } ;
typedef int firmware_id ;


 int MDIO_MMD_PCS ;
 scalar_t__ PCS_FW_PRODUCT_CODE_1 ;
 int ef4_mdio_read (struct ef4_nic*,int ,scalar_t__) ;
 int netif_info (struct ef4_nic*,int ,int ,char*,int,int,int,int,int,int,int,int,int) ;
 int probe ;

__attribute__((used)) static void qt2025c_firmware_id(struct ef4_nic *efx)
{
 struct qt202x_phy_data *phy_data = efx->phy_data;
 u8 firmware_id[9];
 size_t i;

 for (i = 0; i < sizeof(firmware_id); i++)
  firmware_id[i] = ef4_mdio_read(efx, MDIO_MMD_PCS,
            PCS_FW_PRODUCT_CODE_1 + i);
 netif_info(efx, probe, efx->net_dev,
     "QT2025C firmware %xr%d v%d.%d.%d.%d [20%02d-%02d-%02d]\n",
     (firmware_id[0] << 8) | firmware_id[1], firmware_id[2],
     firmware_id[3] >> 4, firmware_id[3] & 0xf,
     firmware_id[4], firmware_id[5],
     firmware_id[6], firmware_id[7], firmware_id[8]);
 phy_data->firmware_ver = ((firmware_id[3] & 0xf0) << 20) |
     ((firmware_id[3] & 0x0f) << 16) |
     (firmware_id[4] << 8) | firmware_id[5];
}
