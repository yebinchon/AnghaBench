
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int addr; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct et131x_adapter {TYPE_1__* netdev; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int et131x_mii_read (struct et131x_adapter*,int ,int *) ;
 int et131x_mii_write (struct et131x_adapter*,int ,int ,int ) ;

__attribute__((used)) static void et1310_phy_power_switch(struct et131x_adapter *adapter, bool down)
{
 u16 data;
 struct phy_device *phydev = adapter->netdev->phydev;

 et131x_mii_read(adapter, MII_BMCR, &data);
 data &= ~BMCR_PDOWN;
 if (down)
  data |= BMCR_PDOWN;
 et131x_mii_write(adapter, phydev->mdio.addr, MII_BMCR, data);
}
