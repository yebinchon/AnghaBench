
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct ethtool_eeprom {unsigned int offset; unsigned int len; } ;


 int mv88e6xxx_g2_eeprom_read16 (struct mv88e6xxx_chip*,unsigned int,int*) ;

int mv88e6xxx_g2_get_eeprom16(struct mv88e6xxx_chip *chip,
         struct ethtool_eeprom *eeprom, u8 *data)
{
 unsigned int offset = eeprom->offset;
 unsigned int len = eeprom->len;
 u16 val;
 int err;

 eeprom->len = 0;

 if (offset & 1) {
  err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
  if (err)
   return err;

  *data++ = (val >> 8) & 0xff;

  offset++;
  len--;
  eeprom->len++;
 }

 while (len >= 2) {
  err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
  if (err)
   return err;

  *data++ = val & 0xff;
  *data++ = (val >> 8) & 0xff;

  offset += 2;
  len -= 2;
  eeprom->len += 2;
 }

 if (len) {
  err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
  if (err)
   return err;

  *data++ = val & 0xff;

  offset++;
  len--;
  eeprom->len++;
 }

 return 0;
}
