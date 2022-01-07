
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 scalar_t__ EEPROM_READ ;
 int inw (int) ;
 int mdelay (int) ;
 int outw (scalar_t__,int) ;

__attribute__((used)) static ushort read_eeprom(int ioaddr, int index)
{
 outw(EEPROM_READ + index, ioaddr + 10);


 mdelay(2);
 return inw(ioaddr + 12);
}
