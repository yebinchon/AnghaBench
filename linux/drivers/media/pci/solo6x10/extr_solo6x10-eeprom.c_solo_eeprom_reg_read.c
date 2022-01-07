
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 unsigned int EE_DATA_READ ;
 int SOLO_EEPROM_CTRL ;
 unsigned int solo_reg_read (struct solo_dev*,int ) ;

__attribute__((used)) static unsigned int solo_eeprom_reg_read(struct solo_dev *solo_dev)
{
 return solo_reg_read(solo_dev, SOLO_EEPROM_CTRL) & EE_DATA_READ;
}
