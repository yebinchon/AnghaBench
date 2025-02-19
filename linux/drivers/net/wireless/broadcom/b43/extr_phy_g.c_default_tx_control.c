
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int radio_ver; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_TXCTL_PA2DB ;
 int B43_TXCTL_TXMIX ;

__attribute__((used)) static u16 default_tx_control(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->radio_ver != 0x2050)
  return 0;
 if (phy->radio_rev == 1)
  return B43_TXCTL_PA2DB | B43_TXCTL_TXMIX;
 if (phy->radio_rev < 6)
  return B43_TXCTL_PA2DB;
 if (phy->radio_rev == 8)
  return B43_TXCTL_TXMIX;
 return 0;
}
