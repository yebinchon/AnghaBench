
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int eeprom_len; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;



__attribute__((used)) static int mv88e6xxx_get_eeprom_len(struct dsa_switch *ds)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 return chip->eeprom_len;
}
