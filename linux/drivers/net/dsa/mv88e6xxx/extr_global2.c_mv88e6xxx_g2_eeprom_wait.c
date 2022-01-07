
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_EEPROM_CMD ;
 int MV88E6XXX_G2_EEPROM_CMD_BUSY ;
 int MV88E6XXX_G2_EEPROM_CMD_RUNNING ;
 int __bf_shf (int ) ;
 int mv88e6xxx_g2_wait_bit (struct mv88e6xxx_chip*,int ,int,int ) ;

__attribute__((used)) static int mv88e6xxx_g2_eeprom_wait(struct mv88e6xxx_chip *chip)
{
 int bit = __bf_shf(MV88E6XXX_G2_EEPROM_CMD_BUSY);
 int err;

 err = mv88e6xxx_g2_wait_bit(chip, MV88E6XXX_G2_EEPROM_CMD, bit, 0);
 if (err)
  return err;

 bit = __bf_shf(MV88E6XXX_G2_EEPROM_CMD_RUNNING);

 return mv88e6xxx_g2_wait_bit(chip, MV88E6XXX_G2_EEPROM_CMD, bit, 0);
}
