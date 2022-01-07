
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int ADDR_LEN ;
 int EE_CS ;
 int EE_EWEN_CMD ;
 int EE_SHIFT_CLK ;
 int SOLO_EEPROM_ENABLE ;
 int solo_eeprom_cmd (struct solo_dev*,int) ;
 unsigned int solo_eeprom_reg_read (struct solo_dev*) ;
 int solo_eeprom_reg_write (struct solo_dev*,int) ;

unsigned int solo_eeprom_ewen(struct solo_dev *solo_dev, int w_en)
{
 int ewen_cmd = (w_en ? 0x3f : 0) | (EE_EWEN_CMD << ADDR_LEN);
 unsigned int retval = 0;
 int i;

 solo_eeprom_cmd(solo_dev, ewen_cmd);

 for (i = 0; i < 16; i++) {
  solo_eeprom_reg_write(solo_dev, SOLO_EEPROM_ENABLE |
          EE_SHIFT_CLK);
  retval = (retval << 1) | solo_eeprom_reg_read(solo_dev);
  solo_eeprom_reg_write(solo_dev, SOLO_EEPROM_ENABLE);
  retval = (retval << 1) | solo_eeprom_reg_read(solo_dev);
 }

 solo_eeprom_reg_write(solo_dev, ~EE_CS);
 retval = (retval << 1) | solo_eeprom_reg_read(solo_dev);

 return retval;
}
