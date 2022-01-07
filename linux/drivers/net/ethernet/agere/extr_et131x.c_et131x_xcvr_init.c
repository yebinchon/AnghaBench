
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int addr; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct et131x_adapter {int* eeprom_data; TYPE_2__* netdev; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;


 int ET_LED2_LED_1000T ;
 int ET_LED2_LED_100TX ;
 int LED_LINK_SHIFT ;
 int LED_TXRX_SHIFT ;
 int LED_VAL_1000BT_100BTX ;
 int LED_VAL_LINKON ;
 int LED_VAL_LINKON_ACTIVE ;
 int PHY_LED_2 ;
 int et131x_mii_read (struct et131x_adapter*,int ,int*) ;
 int et131x_mii_write (struct et131x_adapter*,int ,int ,int) ;

__attribute__((used)) static void et131x_xcvr_init(struct et131x_adapter *adapter)
{
 u16 lcr2;
 struct phy_device *phydev = adapter->netdev->phydev;
 if ((adapter->eeprom_data[1] & 0x4) == 0) {
  et131x_mii_read(adapter, PHY_LED_2, &lcr2);

  lcr2 &= (ET_LED2_LED_100TX | ET_LED2_LED_1000T);
  lcr2 |= (LED_VAL_LINKON_ACTIVE << LED_LINK_SHIFT);

  if ((adapter->eeprom_data[1] & 0x8) == 0)
   lcr2 |= (LED_VAL_1000BT_100BTX << LED_TXRX_SHIFT);
  else
   lcr2 |= (LED_VAL_LINKON << LED_TXRX_SHIFT);

  et131x_mii_write(adapter, phydev->mdio.addr, PHY_LED_2, lcr2);
 }
}
