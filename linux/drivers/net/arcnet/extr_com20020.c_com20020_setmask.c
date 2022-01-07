
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; } ;


 int COM20020_REG_W_INTMASK ;
 int D_DURING ;
 int arc_printk (int ,struct net_device*,char*,int,int ) ;
 int arcnet_outb (int,int ,int ) ;

__attribute__((used)) static void com20020_setmask(struct net_device *dev, int mask)
{
 u_int ioaddr = dev->base_addr;

 arc_printk(D_DURING, dev, "Setting mask to %x at %x\n", mask, ioaddr);
 arcnet_outb(mask, ioaddr, COM20020_REG_W_INTMASK);
}
