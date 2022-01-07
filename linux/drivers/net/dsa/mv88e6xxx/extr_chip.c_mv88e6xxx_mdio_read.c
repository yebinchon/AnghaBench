
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_mdio_bus {struct mv88e6xxx_chip* chip; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct mii_bus {struct mv88e6xxx_mdio_bus* priv; } ;
struct TYPE_4__ {int (* phy_read ) (struct mv88e6xxx_chip*,struct mii_bus*,int,int,int*) ;} ;
struct TYPE_3__ {scalar_t__ family; TYPE_2__* ops; } ;


 int EOPNOTSUPP ;
 int MII_PHYSID2 ;
 scalar_t__ MV88E6XXX_FAMILY_6165 ;
 int MV88E6XXX_PORT_SWITCH_ID_PROD_6390 ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int stub1 (struct mv88e6xxx_chip*,struct mii_bus*,int,int,int*) ;

__attribute__((used)) static int mv88e6xxx_mdio_read(struct mii_bus *bus, int phy, int reg)
{
 struct mv88e6xxx_mdio_bus *mdio_bus = bus->priv;
 struct mv88e6xxx_chip *chip = mdio_bus->chip;
 u16 val;
 int err;

 if (!chip->info->ops->phy_read)
  return -EOPNOTSUPP;

 mv88e6xxx_reg_lock(chip);
 err = chip->info->ops->phy_read(chip, bus, phy, reg, &val);
 mv88e6xxx_reg_unlock(chip);

 if (reg == MII_PHYSID2) {

  if (chip->info->family != MV88E6XXX_FAMILY_6165)
   if (!(val & 0x3f0))
    val |= MV88E6XXX_PORT_SWITCH_ID_PROD_6390 >> 4;
 }

 return err ? err : val;
}
