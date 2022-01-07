
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORKSCREW_TOTAL_SIZE ;
 scalar_t__ EEPROM_Read ;
 unsigned int Wn0EepromCmd ;
 unsigned int Wn0EepromData ;
 int inw (unsigned int) ;
 int outw (scalar_t__,unsigned int) ;
 int release_region (unsigned int,int ) ;
 int request_region (unsigned int,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int check_device(unsigned ioaddr)
{
 int timer;

 if (!request_region(ioaddr, CORKSCREW_TOTAL_SIZE, "3c515"))
  return 0;

 if ((inw(ioaddr + 0x2002) & 0x1f0) != (ioaddr & 0x1f0)) {
  release_region(ioaddr, CORKSCREW_TOTAL_SIZE);
  return 0;
 }

 outw(EEPROM_Read + 7, ioaddr + Wn0EepromCmd);

 for (timer = 4; timer >= 0; timer--) {
  udelay(162);
  if ((inw(ioaddr + Wn0EepromCmd) & 0x0200) == 0)
   break;
 }
 if (inw(ioaddr + Wn0EepromData) != 0x6d50) {
  release_region(ioaddr, CORKSCREW_TOTAL_SIZE);
  return 0;
 }
 return 1;
}
