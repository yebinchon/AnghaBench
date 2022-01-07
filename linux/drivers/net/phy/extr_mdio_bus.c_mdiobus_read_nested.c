
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int mdio_lock; } ;


 int BUG_ON (int ) ;
 int MDIO_MUTEX_NESTED ;
 int __mdiobus_read (struct mii_bus*,int,int ) ;
 int in_interrupt () ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

int mdiobus_read_nested(struct mii_bus *bus, int addr, u32 regnum)
{
 int retval;

 BUG_ON(in_interrupt());

 mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);
 retval = __mdiobus_read(bus, addr, regnum);
 mutex_unlock(&bus->mdio_lock);

 return retval;
}
