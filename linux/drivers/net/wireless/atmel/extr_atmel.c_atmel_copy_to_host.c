
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int DR ;
 int atmel_read16 (struct net_device*,int ) ;
 unsigned char atmel_read8 (struct net_device*,int ) ;
 int atmel_writeAR (struct net_device*,int) ;

__attribute__((used)) static void atmel_copy_to_host(struct net_device *dev, unsigned char *dest,
          u16 src, u16 len)
{
 int i;
 atmel_writeAR(dev, src);
 if (src % 2) {
  *dest = atmel_read8(dev, DR);
  dest++; len--;
 }
 for (i = len; i > 1 ; i -= 2) {
  u16 hw = atmel_read16(dev, DR);
  *dest++ = hw;
  *dest++ = hw >> 8;
 }
 if (i)
  *dest = atmel_read8(dev, DR);
}
