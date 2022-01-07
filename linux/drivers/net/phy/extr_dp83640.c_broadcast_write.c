
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bus; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int BROADCAST_ADDR ;
 int mdiobus_write (int ,int ,int ,int ) ;

__attribute__((used)) static inline int broadcast_write(struct phy_device *phydev, u32 regnum,
      u16 val)
{
 return mdiobus_write(phydev->mdio.bus, BROADCAST_ADDR, regnum, val);
}
