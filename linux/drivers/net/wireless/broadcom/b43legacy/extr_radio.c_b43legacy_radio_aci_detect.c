
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43legacy_phy {scalar_t__ aci_hw_rssi; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 int b43legacy_phy_read (struct b43legacy_wldev*,int) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_radio_selectchannel (struct b43legacy_wldev*,int,int ) ;

u8 b43legacy_radio_aci_detect(struct b43legacy_wldev *dev, u8 channel)
{
 struct b43legacy_phy *phy = &dev->phy;
 u8 ret = 0;
 u16 saved;
 u16 rssi;
 u16 temp;
 int i;
 int j = 0;

 saved = b43legacy_phy_read(dev, 0x0403);
 b43legacy_radio_selectchannel(dev, channel, 0);
 b43legacy_phy_write(dev, 0x0403, (saved & 0xFFF8) | 5);
 if (phy->aci_hw_rssi)
  rssi = b43legacy_phy_read(dev, 0x048A) & 0x3F;
 else
  rssi = saved & 0x3F;

 if (rssi > 32)
  rssi -= 64;
 for (i = 0; i < 100; i++) {
  temp = (b43legacy_phy_read(dev, 0x047F) >> 8) & 0x3F;
  if (temp > 32)
   temp -= 64;
  if (temp < rssi)
   j++;
  if (j >= 20)
   ret = 1;
 }
 b43legacy_phy_write(dev, 0x0403, saved);

 return ret;
}
