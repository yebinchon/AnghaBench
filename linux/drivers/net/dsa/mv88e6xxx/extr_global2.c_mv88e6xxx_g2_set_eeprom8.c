
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;
struct ethtool_eeprom {unsigned int offset; unsigned int len; } ;


 int mv88e6xxx_g2_eeprom_write8 (struct mv88e6xxx_chip*,unsigned int,int ) ;

int mv88e6xxx_g2_set_eeprom8(struct mv88e6xxx_chip *chip,
        struct ethtool_eeprom *eeprom, u8 *data)
{
 unsigned int offset = eeprom->offset;
 unsigned int len = eeprom->len;
 int err;

 eeprom->len = 0;

 while (len) {
  err = mv88e6xxx_g2_eeprom_write8(chip, offset, *data);
  if (err)
   return err;

  eeprom->len++;
  offset++;
  data++;
  len--;
 }

 return 0;
}
