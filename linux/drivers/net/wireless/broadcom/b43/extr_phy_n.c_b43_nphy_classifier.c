
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_NPHY_CLASSCTL ;
 int B43_NPHY_CLASSCTL_CCKEN ;
 int B43_NPHY_CLASSCTL_OFDMEN ;
 int B43_NPHY_CLASSCTL_WAITEDEN ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u16 b43_nphy_classifier(struct b43_wldev *dev, u16 mask, u16 val)
{
 u16 tmp;

 if (dev->dev->core_rev == 16)
  b43_mac_suspend(dev);

 tmp = b43_phy_read(dev, B43_NPHY_CLASSCTL);
 tmp &= (B43_NPHY_CLASSCTL_CCKEN | B43_NPHY_CLASSCTL_OFDMEN |
  B43_NPHY_CLASSCTL_WAITEDEN);
 tmp &= ~mask;
 tmp |= (val & mask);
 b43_phy_maskset(dev, B43_NPHY_CLASSCTL, 0xFFF8, tmp);

 if (dev->dev->core_rev == 16)
  b43_mac_enable(dev);

 return tmp;
}
