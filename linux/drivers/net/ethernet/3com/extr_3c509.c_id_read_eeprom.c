
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 scalar_t__ EEPROM_READ ;
 int el3_debug ;
 int id_port ;
 int inb (int ) ;
 int mdelay (int) ;
 int outb (scalar_t__,int ) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static ushort id_read_eeprom(int index)
{
 int bit, word = 0;



 outb(EEPROM_READ + index, id_port);



 mdelay(4);

 for (bit = 15; bit >= 0; bit--)
  word = (word << 1) + (inb(id_port) & 0x01);

 if (el3_debug > 3)
  pr_debug("  3c509 EEPROM word %d %#4.4x.\n", index, word);

 return word;
}
