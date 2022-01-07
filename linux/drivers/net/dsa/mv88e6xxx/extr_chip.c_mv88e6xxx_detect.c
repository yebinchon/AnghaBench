
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct mv88e6xxx_info {int name; int prod_num; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_info const* info; int dev; } ;


 int ENODEV ;
 int MV88E6XXX_PORT_SWITCH_ID ;
 unsigned int MV88E6XXX_PORT_SWITCH_ID_PROD_MASK ;
 unsigned int MV88E6XXX_PORT_SWITCH_ID_REV_MASK ;
 int dev_info (int ,char*,int ,int ,unsigned int) ;
 int mv88e6xxx_g2_require (struct mv88e6xxx_chip*) ;
 struct mv88e6xxx_info* mv88e6xxx_lookup_info (unsigned int) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int ,int ,unsigned int*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_detect(struct mv88e6xxx_chip *chip)
{
 const struct mv88e6xxx_info *info;
 unsigned int prod_num, rev;
 u16 id;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_read(chip, 0, MV88E6XXX_PORT_SWITCH_ID, &id);
 mv88e6xxx_reg_unlock(chip);
 if (err)
  return err;

 prod_num = id & MV88E6XXX_PORT_SWITCH_ID_PROD_MASK;
 rev = id & MV88E6XXX_PORT_SWITCH_ID_REV_MASK;

 info = mv88e6xxx_lookup_info(prod_num);
 if (!info)
  return -ENODEV;


 chip->info = info;

 err = mv88e6xxx_g2_require(chip);
 if (err)
  return err;

 dev_info(chip->dev, "switch 0x%x detected: %s, revision %u\n",
   chip->info->prod_num, chip->info->name, rev);

 return 0;
}
