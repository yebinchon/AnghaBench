
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int AUTOINCflag ;
 int COM20020_REG_RW_MEMDATA ;
 int COM20020_REG_W_ADDR_HI ;
 int COM20020_REG_W_ADDR_LO ;
 int RDDATAflag ;
 int TIME (struct net_device*,char*,int,int ) ;
 int arcnet_insb (int,int ,void*,int) ;
 int arcnet_outb (int,int,int ) ;

__attribute__((used)) static void com20020_copy_from_card(struct net_device *dev, int bufnum,
        int offset, void *buf, int count)
{
 int ioaddr = dev->base_addr, ofs = 512 * bufnum + offset;


 arcnet_outb((ofs >> 8) | RDDATAflag | AUTOINCflag,
      ioaddr, COM20020_REG_W_ADDR_HI);
 arcnet_outb(ofs & 0xff, ioaddr, COM20020_REG_W_ADDR_LO);


 TIME(dev, "insb", count,
      arcnet_insb(ioaddr, COM20020_REG_RW_MEMDATA, buf, count));
}
