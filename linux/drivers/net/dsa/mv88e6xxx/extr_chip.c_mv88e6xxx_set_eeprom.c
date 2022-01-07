
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct ethtool_eeprom {int magic; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_eeprom ) (struct mv88e6xxx_chip*,struct ethtool_eeprom*,int *) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int stub1 (struct mv88e6xxx_chip*,struct ethtool_eeprom*,int *) ;

__attribute__((used)) static int mv88e6xxx_set_eeprom(struct dsa_switch *ds,
    struct ethtool_eeprom *eeprom, u8 *data)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;

 if (!chip->info->ops->set_eeprom)
  return -EOPNOTSUPP;

 if (eeprom->magic != 0xc3ec4951)
  return -EINVAL;

 mv88e6xxx_reg_lock(chip);
 err = chip->info->ops->set_eeprom(chip, eeprom, data);
 mv88e6xxx_reg_unlock(chip);

 return err;
}
