
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int ) ;int mdio_lock; } ;


 int WARN_ON_ONCE (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct mii_bus*,int,int ) ;
 int trace_mdio_access (struct mii_bus*,int,int,int ,int,int) ;

int __mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
{
 int retval;

 WARN_ON_ONCE(!mutex_is_locked(&bus->mdio_lock));

 retval = bus->read(bus, addr, regnum);

 trace_mdio_access(bus, 1, addr, regnum, retval, retval);

 return retval;
}
