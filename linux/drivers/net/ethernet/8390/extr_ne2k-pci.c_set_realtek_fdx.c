
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {long base_addr; } ;


 int E8390_NODMA ;
 int E8390_PAGE0 ;
 long NE_CMD ;
 int outb (int,long) ;

__attribute__((used)) static inline int set_realtek_fdx(struct net_device *dev)
{
 long ioaddr = dev->base_addr;

 outb(0xC0 + E8390_NODMA, ioaddr + NE_CMD);
 outb(0xC0, ioaddr + 0x01);
 outb(0x40, ioaddr + 0x06);
 outb(0x00, ioaddr + 0x01);
 outb(E8390_PAGE0 + E8390_NODMA, ioaddr + NE_CMD);
 return 0;
}
