
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {int dummy; } ;


 int SOLO_EEPROM_CTRL ;
 int eeprom_delay () ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static void solo_eeprom_reg_write(struct solo_dev *solo_dev, u32 data)
{
 solo_reg_write(solo_dev, SOLO_EEPROM_CTRL, data);
 eeprom_delay();
}
