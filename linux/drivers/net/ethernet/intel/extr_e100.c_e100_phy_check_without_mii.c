
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int phy_id; } ;
struct nic {int* eeprom; TYPE_1__ mii; int mdio_ctrl; int netdev; } ;





 size_t eeprom_phy_iface ;
 int mdio_ctrl_phy_mii_emulated ;
 int netif_info (struct nic*,int ,int ,char*) ;
 int probe ;

__attribute__((used)) static int e100_phy_check_without_mii(struct nic *nic)
{
 u8 phy_type;
 int without_mii;

 phy_type = (nic->eeprom[eeprom_phy_iface] >> 8) & 0x0f;

 switch (phy_type) {
 case 129:
 case 130:
 case 128:






  netif_info(nic, probe, nic->netdev,
      "found MII-less i82503 or 80c24 or other PHY\n");

  nic->mdio_ctrl = mdio_ctrl_phy_mii_emulated;
  nic->mii.phy_id = 0;





  without_mii = 1;
  break;
 default:
  without_mii = 0;
  break;
 }
 return without_mii;
}
