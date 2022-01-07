
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct net_device {int base_addr; int name; } ;


 int EEPROM_CTRL ;
 int HP100_EEPROM_LOAD ;
 int HP100_EE_LOAD ;
 int OPTION_MSW ;
 int TRACE ;
 int hp100_andw (int ,int ) ;
 int hp100_inb (int ) ;
 int hp100_orw (int ,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void hp100_load_eeprom(struct net_device *dev, u_short probe_ioaddr)
{
 int i;
 int ioaddr = probe_ioaddr > 0 ? probe_ioaddr : dev->base_addr;





 hp100_page(EEPROM_CTRL);
 hp100_andw(~HP100_EEPROM_LOAD, EEPROM_CTRL);
 hp100_orw(HP100_EEPROM_LOAD, EEPROM_CTRL);
 for (i = 0; i < 10000; i++)
  if (!(hp100_inb(OPTION_MSW) & HP100_EE_LOAD))
   return;
 printk("hp100: %s: hp100_load_eeprom - timeout\n", dev->name);
}
