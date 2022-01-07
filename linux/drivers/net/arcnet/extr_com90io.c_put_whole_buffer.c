
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 unsigned int AUTOINCflag ;
 int COM9026_REG_RW_MEMDATA ;
 int COM9026_REG_W_ADDR_HI ;
 int COM9026_REG_W_ADDR_LO ;
 int arcnet_outb (unsigned int,int,int ) ;
 int put_buffer_byte (struct net_device*,int ,int ) ;

__attribute__((used)) static void put_whole_buffer(struct net_device *dev, unsigned offset,
        unsigned length, char *dest)
{
 int ioaddr = dev->base_addr;

 arcnet_outb((offset >> 8) | AUTOINCflag, ioaddr, COM9026_REG_W_ADDR_HI);
 arcnet_outb(offset & 0xff, ioaddr,COM9026_REG_W_ADDR_LO);

 while (length--)



  arcnet_outb(*(dest++), ioaddr, COM9026_REG_RW_MEMDATA);

}
