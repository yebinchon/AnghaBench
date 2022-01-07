
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct ethtool_eeprom {unsigned int offset; unsigned int len; } ;


 int EROFS ;
 int MV88E6XXX_G2_EEPROM_CMD ;
 int MV88E6XXX_G2_EEPROM_CMD_WRITE_EN ;
 int mv88e6xxx_g2_eeprom_read16 (struct mv88e6xxx_chip*,unsigned int,int*) ;
 int mv88e6xxx_g2_eeprom_write16 (struct mv88e6xxx_chip*,unsigned int,int) ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;

int mv88e6xxx_g2_set_eeprom16(struct mv88e6xxx_chip *chip,
         struct ethtool_eeprom *eeprom, u8 *data)
{
 unsigned int offset = eeprom->offset;
 unsigned int len = eeprom->len;
 u16 val;
 int err;


 err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_EEPROM_CMD, &val);
 if (err)
  return err;

 if (!(val & MV88E6XXX_G2_EEPROM_CMD_WRITE_EN))
  return -EROFS;

 eeprom->len = 0;

 if (offset & 1) {
  err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
  if (err)
   return err;

  val = (*data++ << 8) | (val & 0xff);

  err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
  if (err)
   return err;

  offset++;
  len--;
  eeprom->len++;
 }

 while (len >= 2) {
  val = *data++;
  val |= *data++ << 8;

  err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
  if (err)
   return err;

  offset += 2;
  len -= 2;
  eeprom->len += 2;
 }

 if (len) {
  err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
  if (err)
   return err;

  val = (val & 0xff00) | *data++;

  err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
  if (err)
   return err;

  offset++;
  len--;
  eeprom->len++;
 }

 return 0;
}
