
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {long base_addr; } ;


 int inb (long) ;
 int outb (int,long) ;

__attribute__((used)) static inline int set_holtek_fdx(struct net_device *dev)
{
 long ioaddr = dev->base_addr;

 outb(inb(ioaddr + 0x20) | 0x80, ioaddr + 0x20);
 return 0;
}
