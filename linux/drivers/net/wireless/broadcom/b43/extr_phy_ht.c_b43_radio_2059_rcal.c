
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int wl; } ;


 int R2059_C3 ;
 int R2059_RCAL_CONFIG ;
 int R2059_RCAL_STATUS ;
 int b43_radio_mask (struct b43_wldev*,int,int) ;
 int b43_radio_maskset (struct b43_wldev*,int,int,int) ;
 int b43_radio_set (struct b43_wldev*,int,int) ;
 int b43_radio_wait_value (struct b43_wldev*,int,int,int,int,int) ;
 int b43err (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void b43_radio_2059_rcal(struct b43_wldev *dev)
{

 b43_radio_set(dev, R2059_C3 | R2059_RCAL_CONFIG, 0x1);
 usleep_range(10, 20);

 b43_radio_set(dev, R2059_C3 | 0x0BF, 0x1);
 b43_radio_maskset(dev, R2059_C3 | 0x19B, 0x3, 0x2);


 b43_radio_set(dev, R2059_C3 | R2059_RCAL_CONFIG, 0x2);
 usleep_range(100, 200);


 b43_radio_mask(dev, R2059_C3 | R2059_RCAL_CONFIG, ~0x2);

 if (!b43_radio_wait_value(dev, R2059_C3 | R2059_RCAL_STATUS, 1, 1, 100,
      1000000))
  b43err(dev->wl, "Radio 0x2059 rcal timeout\n");


 b43_radio_mask(dev, R2059_C3 | R2059_RCAL_CONFIG, ~0x1);

 b43_radio_set(dev, 0xa, 0x60);
}
