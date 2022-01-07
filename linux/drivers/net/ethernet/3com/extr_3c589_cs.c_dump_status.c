
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;


 int EL3WINDOW (int) ;
 unsigned int EL3_STATUS ;
 unsigned int RX_STATUS ;
 unsigned int TX_FREE ;
 scalar_t__ TX_STATUS ;
 int inb (scalar_t__) ;
 int inw (unsigned int) ;
 int netdev_info (struct net_device*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_status(struct net_device *dev)
{
 unsigned int ioaddr = dev->base_addr;
 EL3WINDOW(1);
 netdev_info(dev, "  irq status %04x, rx status %04x, tx status %02x  tx free %04x\n",
   inw(ioaddr+EL3_STATUS), inw(ioaddr+RX_STATUS),
   inb(ioaddr+TX_STATUS), inw(ioaddr+TX_FREE));
 EL3WINDOW(4);
 netdev_info(dev, "  diagnostics: fifo %04x net %04x ethernet %04x media %04x\n",
   inw(ioaddr+0x04), inw(ioaddr+0x06), inw(ioaddr+0x08),
   inw(ioaddr+0x0a));
 EL3WINDOW(1);
}
