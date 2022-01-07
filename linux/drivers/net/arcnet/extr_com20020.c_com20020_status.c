
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; } ;


 int COM20020_REG_R_DIAGSTAT ;
 int COM20020_REG_R_STATUS ;
 int arcnet_inb (int ,int ) ;

__attribute__((used)) static int com20020_status(struct net_device *dev)
{
 u_int ioaddr = dev->base_addr;

 return arcnet_inb(ioaddr, COM20020_REG_R_STATUS) +
  (arcnet_inb(ioaddr, COM20020_REG_R_DIAGSTAT) << 8);
}
