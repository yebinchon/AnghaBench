
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_93cx6 {int reg_data_clock; int (* register_write ) (struct eeprom_93cx6*) ;} ;


 int ndelay (int) ;
 int stub1 (struct eeprom_93cx6*) ;

__attribute__((used)) static inline void eeprom_93cx6_pulse_high(struct eeprom_93cx6 *eeprom)
{
 eeprom->reg_data_clock = 1;
 eeprom->register_write(eeprom);






 ndelay(450);
}
