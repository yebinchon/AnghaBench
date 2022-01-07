
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int base_addr; } ;


 int EL3WINDOW (int) ;
 scalar_t__ WN4_MEDIA ;
 int inw (scalar_t__) ;

__attribute__((used)) static int
el3_link_ok(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 u16 tmp;

 EL3WINDOW(4);
 tmp = inw(ioaddr + WN4_MEDIA);
 EL3WINDOW(1);
 return tmp & (1<<11);
}
