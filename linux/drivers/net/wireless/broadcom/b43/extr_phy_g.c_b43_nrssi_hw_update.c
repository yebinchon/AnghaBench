
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s16 ;


 int b43_nrssi_hw_read (struct b43_wldev*,int) ;
 int b43_nrssi_hw_write (struct b43_wldev*,int,int ) ;
 int clamp_val (int ,int,int) ;

__attribute__((used)) static void b43_nrssi_hw_update(struct b43_wldev *dev, u16 val)
{
 u16 i;
 s16 tmp;

 for (i = 0; i < 64; i++) {
  tmp = b43_nrssi_hw_read(dev, i);
  tmp -= val;
  tmp = clamp_val(tmp, -32, 31);
  b43_nrssi_hw_write(dev, i, tmp);
 }
}
