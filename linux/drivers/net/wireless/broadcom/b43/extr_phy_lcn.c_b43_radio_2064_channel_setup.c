
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int b43_radio_maskset (struct b43_wldev*,int,int,int) ;
 int b43_radio_read (struct b43_wldev*,int) ;
 int b43_radio_set (struct b43_wldev*,int,int) ;
 int b43_radio_write (struct b43_wldev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void b43_radio_2064_channel_setup(struct b43_wldev *dev)
{
 u16 save[2];

 b43_radio_set(dev, 0x09d, 0x4);
 b43_radio_write(dev, 0x09e, 0xf);


 b43_radio_write(dev, 0x02a, 0xb);
 b43_radio_maskset(dev, 0x030, ~0x3, 0xa);
 b43_radio_maskset(dev, 0x091, ~0x3, 0);
 b43_radio_maskset(dev, 0x038, ~0xf, 0x7);
 b43_radio_maskset(dev, 0x030, ~0xc, 0x8);
 b43_radio_maskset(dev, 0x05e, ~0xf, 0x8);
 b43_radio_maskset(dev, 0x05e, ~0xf0, 0x80);
 b43_radio_write(dev, 0x06c, 0x80);

 save[0] = b43_radio_read(dev, 0x044);
 save[1] = b43_radio_read(dev, 0x12b);

 b43_radio_set(dev, 0x044, 0x7);
 b43_radio_set(dev, 0x12b, 0xe);



 b43_radio_write(dev, 0x040, 0xfb);

 b43_radio_write(dev, 0x041, 0x9a);
 b43_radio_write(dev, 0x042, 0xa3);
 b43_radio_write(dev, 0x043, 0x0c);



 b43_radio_set(dev, 0x044, 0x0c);
 udelay(1);

 b43_radio_write(dev, 0x044, save[0]);
 b43_radio_write(dev, 0x12b, save[1]);

 if (dev->phy.rev == 1) {

  b43_radio_write(dev, 0x038, 0x0);
  b43_radio_write(dev, 0x091, 0x7);
 }
}
