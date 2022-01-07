
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MIFCSR ;
 int MIFDELAY ;
 unsigned int bmac_mif_readbits (struct net_device*,int) ;
 int bmac_mif_writebits (struct net_device*,unsigned int,int) ;
 int bmwrite (struct net_device*,int ,int) ;

__attribute__((used)) static unsigned int
bmac_mif_read(struct net_device *dev, unsigned int addr)
{
 unsigned int val;

 bmwrite(dev, MIFCSR, 4);
 MIFDELAY;
 bmac_mif_writebits(dev, ~0U, 32);
 bmac_mif_writebits(dev, 6, 4);
 bmac_mif_writebits(dev, addr, 10);
 bmwrite(dev, MIFCSR, 2);
 MIFDELAY;
 bmwrite(dev, MIFCSR, 1);
 MIFDELAY;
 val = bmac_mif_readbits(dev, 17);
 bmwrite(dev, MIFCSR, 4);
 MIFDELAY;
 return val;
}
