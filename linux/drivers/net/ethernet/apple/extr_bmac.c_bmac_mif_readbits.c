
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MIFCSR ;
 int MIFDELAY ;
 int bmread (struct net_device*,int ) ;
 int bmwrite (struct net_device*,int ,int) ;

__attribute__((used)) static unsigned int
bmac_mif_readbits(struct net_device *dev, int nb)
{
 unsigned int val = 0;

 while (--nb >= 0) {
  bmwrite(dev, MIFCSR, 0);
  MIFDELAY;
  if (bmread(dev, MIFCSR) & 8)
   val |= 1 << nb;
  bmwrite(dev, MIFCSR, 1);
  MIFDELAY;
 }
 bmwrite(dev, MIFCSR, 0);
 MIFDELAY;
 bmwrite(dev, MIFCSR, 1);
 MIFDELAY;
 return val;
}
