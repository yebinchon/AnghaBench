
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SROMCSR ;
 int bmac_clock_in_bit (struct net_device*,unsigned short) ;
 unsigned short bmac_clock_out_bit (struct net_device*) ;
 int bmwrite (struct net_device*,int ,int ) ;

__attribute__((used)) static unsigned short
read_srom(struct net_device *dev, unsigned int addr, unsigned int addr_len)
{
 unsigned short data, val;
 int i;


 for (i = 0; i < addr_len; i++) {
  val = addr >> (addr_len-i-1);
  bmac_clock_in_bit(dev, val & 1);
 }


 data = 0;
 for (i = 0; i < 16; i++) {
  val = bmac_clock_out_bit(dev);
  data <<= 1;
  data |= val;
 }
 bmwrite(dev, SROMCSR, 0);

 return data;
}
