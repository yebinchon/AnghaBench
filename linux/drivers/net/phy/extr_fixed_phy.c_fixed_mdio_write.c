
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;



__attribute__((used)) static int fixed_mdio_write(struct mii_bus *bus, int phy_addr, int reg_num,
       u16 val)
{
 return 0;
}
