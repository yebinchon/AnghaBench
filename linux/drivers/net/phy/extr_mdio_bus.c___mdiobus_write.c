
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int ,int ) ;int mdio_lock; } ;


 int WARN_ON_ONCE (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct mii_bus*,int,int ,int ) ;
 int trace_mdio_access (struct mii_bus*,int ,int,int ,int ,int) ;

int __mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
{
 int err;

 WARN_ON_ONCE(!mutex_is_locked(&bus->mdio_lock));

 err = bus->write(bus, addr, regnum, val);

 trace_mdio_access(bus, 0, addr, regnum, val, err);

 return err;
}
