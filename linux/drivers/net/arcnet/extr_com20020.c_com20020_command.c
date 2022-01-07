
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; } ;


 int COM20020_REG_W_COMMAND ;
 int arcnet_outb (int,int ,int ) ;

__attribute__((used)) static void com20020_command(struct net_device *dev, int cmd)
{
 u_int ioaddr = dev->base_addr;

 arcnet_outb(cmd, ioaddr, COM20020_REG_W_COMMAND);
}
