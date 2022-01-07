
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_NTAB16 (int,int) ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 int b43_ntab_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u16 b43_nphy_read_lpf_ctl(struct b43_wldev *dev, u16 offset)
{
 if (!offset)
  offset = b43_is_40mhz(dev) ? 0x159 : 0x154;
 return b43_ntab_read(dev, B43_NTAB16(7, offset)) & 0x7;
}
