
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G2_EEPROM_ADDR ;
 int MV88E6XXX_G2_EEPROM_CMD ;
 int MV88E6XXX_G2_EEPROM_CMD_OP_READ ;
 int mv88e6xxx_g2_eeprom_cmd (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_g2_eeprom_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_eeprom_read8(struct mv88e6xxx_chip *chip,
         u16 addr, u8 *data)
{
 u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_READ;
 int err;

 err = mv88e6xxx_g2_eeprom_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g2_write(chip, MV88E6390_G2_EEPROM_ADDR, addr);
 if (err)
  return err;

 err = mv88e6xxx_g2_eeprom_cmd(chip, cmd);
 if (err)
  return err;

 err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_EEPROM_CMD, &cmd);
 if (err)
  return err;

 *data = cmd & 0xff;

 return 0;
}
