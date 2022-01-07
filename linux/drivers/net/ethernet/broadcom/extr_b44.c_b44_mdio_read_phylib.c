
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {struct b44* priv; } ;
struct b44 {int dummy; } ;


 int __b44_readphy (struct b44*,int,int,int*) ;

__attribute__((used)) static int b44_mdio_read_phylib(struct mii_bus *bus, int phy_id, int location)
{
 u32 val;
 struct b44 *bp = bus->priv;
 int rc = __b44_readphy(bp, phy_id, location, &val);
 if (rc)
  return 0xffffffff;
 return val;
}
