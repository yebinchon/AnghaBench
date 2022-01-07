
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ipw_priv {int dummy; } ;


 int EEPROM_BIT_CS ;
 int EEPROM_BIT_DI ;
 int EEPROM_BIT_SK ;
 int eeprom_write_reg (struct ipw_priv*,int) ;

__attribute__((used)) static inline void eeprom_write_bit(struct ipw_priv *p, u8 bit)
{
 int d = (bit ? EEPROM_BIT_DI : 0);
 eeprom_write_reg(p, EEPROM_BIT_CS | d);
 eeprom_write_reg(p, EEPROM_BIT_CS | d | EEPROM_BIT_SK);
}
