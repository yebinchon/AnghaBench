
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_NPHY_TXF_40CO_B1S2 ;
 int B43_NPHY_TXF_40CO_B32S2 ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 scalar_t__ b43_nphy_ipa (struct b43_wldev*) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_tx_lpf_bw(struct b43_wldev *dev)
{
 u16 tmp;

 if (dev->phy.rev < 3 || dev->phy.rev >= 7)
  return;

 if (b43_nphy_ipa(dev))
  tmp = b43_is_40mhz(dev) ? 5 : 4;
 else
  tmp = b43_is_40mhz(dev) ? 3 : 1;
 b43_phy_write(dev, B43_NPHY_TXF_40CO_B32S2,
        (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);

 if (b43_nphy_ipa(dev)) {
  tmp = b43_is_40mhz(dev) ? 4 : 1;
  b43_phy_write(dev, B43_NPHY_TXF_40CO_B1S2,
         (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);
 }
}
