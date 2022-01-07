
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct b44* priv; } ;
struct b44 {int dummy; } ;


 int __b44_writephy (struct b44*,int,int,int ) ;

__attribute__((used)) static int b44_mdio_write_phylib(struct mii_bus *bus, int phy_id, int location,
     u16 val)
{
 struct b44 *bp = bus->priv;
 return __b44_writephy(bp, phy_id, location, val);
}
