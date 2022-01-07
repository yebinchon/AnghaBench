
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int mdio_lock; } ;


 int BUG_ON (int ) ;
 int MDIO_MUTEX_NESTED ;
 int __mdiobus_write (struct mii_bus*,int,int ,int ) ;
 int in_interrupt () ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

int mdiobus_write_nested(struct mii_bus *bus, int addr, u32 regnum, u16 val)
{
 int err;

 BUG_ON(in_interrupt());

 mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);
 err = __mdiobus_write(bus, addr, regnum, val);
 mutex_unlock(&bus->mdio_lock);

 return err;
}
