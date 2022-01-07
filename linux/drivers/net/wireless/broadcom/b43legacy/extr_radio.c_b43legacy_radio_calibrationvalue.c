
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int b43legacy_radio_read16 (struct b43legacy_wldev*,int) ;
 int* rcc_table ;

u16 b43legacy_radio_calibrationvalue(struct b43legacy_wldev *dev)
{
 u16 reg;
 u16 index;
 u16 ret;

 reg = b43legacy_radio_read16(dev, 0x0060);
 index = (reg & 0x001E) >> 1;
 ret = rcc_table[index] << 1;
 ret |= (reg & 0x0001);
 ret |= 0x0020;

 return ret;
}
