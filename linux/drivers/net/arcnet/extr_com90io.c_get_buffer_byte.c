
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct net_device {int base_addr; } ;


 int COM9026_REG_RW_MEMDATA ;
 int COM9026_REG_W_ADDR_HI ;
 int COM9026_REG_W_ADDR_LO ;
 int arcnet_inb (int,int ) ;
 int arcnet_outb (unsigned int,int,int ) ;

__attribute__((used)) static u_char get_buffer_byte(struct net_device *dev, unsigned offset)
{
 int ioaddr = dev->base_addr;

 arcnet_outb(offset >> 8, ioaddr, COM9026_REG_W_ADDR_HI);
 arcnet_outb(offset & 0xff, ioaddr, COM9026_REG_W_ADDR_LO);

 return arcnet_inb(ioaddr, COM9026_REG_RW_MEMDATA);
}
