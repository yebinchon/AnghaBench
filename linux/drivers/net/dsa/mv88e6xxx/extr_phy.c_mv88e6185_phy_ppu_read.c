
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mii_bus {int dummy; } ;


 int mv88e6xxx_phy_ppu_access_get (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_phy_ppu_access_put (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_read (struct mv88e6xxx_chip*,int,int,int *) ;

int mv88e6185_phy_ppu_read(struct mv88e6xxx_chip *chip, struct mii_bus *bus,
      int addr, int reg, u16 *val)
{
 int err;

 err = mv88e6xxx_phy_ppu_access_get(chip);
 if (!err) {
  err = mv88e6xxx_read(chip, addr, reg, val);
  mv88e6xxx_phy_ppu_access_put(chip);
 }

 return err;
}
