
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mii_bus {int dummy; } ;


 int mv88e6xxx_read (struct mv88e6xxx_chip*,int,int,int *) ;

int mv88e6165_phy_read(struct mv88e6xxx_chip *chip, struct mii_bus *bus,
         int addr, int reg, u16 *val)
{
 return mv88e6xxx_read(chip, addr, reg, val);
}
