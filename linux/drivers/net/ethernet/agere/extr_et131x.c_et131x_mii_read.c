
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int addr; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct et131x_adapter {TYPE_1__* netdev; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;


 int EIO ;
 int et131x_phy_mii_read (struct et131x_adapter*,int ,int ,int *) ;

__attribute__((used)) static int et131x_mii_read(struct et131x_adapter *adapter, u8 reg, u16 *value)
{
 struct phy_device *phydev = adapter->netdev->phydev;

 if (!phydev)
  return -EIO;

 return et131x_phy_mii_read(adapter, phydev->mdio.addr, reg, value);
}
