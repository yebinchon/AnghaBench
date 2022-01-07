
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
typedef enum n_rf_ctl_over_cmd { ____Placeholder_n_rf_ctl_over_cmd } n_rf_ctl_over_cmd ;


 int B43_WARN_ON (int) ;





 int b43_nphy_rf_ctl_override_rev7 (struct b43_wldev*,int,int,int ,int,int) ;

__attribute__((used)) static void b43_nphy_rf_ctl_override_one_to_many(struct b43_wldev *dev,
       enum n_rf_ctl_over_cmd cmd,
       u16 value, u8 core, bool off)
{
 struct b43_phy *phy = &dev->phy;
 u16 tmp;

 B43_WARN_ON(phy->rev < 7);

 switch (cmd) {
 case 132:
  b43_nphy_rf_ctl_override_rev7(dev, 0x20, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x10, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x08, value, core, off, 1);
  break;
 case 130:
  b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x2, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x1, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x2, value, core, off, 2);
  b43_nphy_rf_ctl_override_rev7(dev, 0x0800, 0, core, off, 1);
  break;
 case 128:
  b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 0);
  b43_nphy_rf_ctl_override_rev7(dev, 0x2, value, core, off, 1);
  b43_nphy_rf_ctl_override_rev7(dev, 0x1, value, core, off, 2);
  b43_nphy_rf_ctl_override_rev7(dev, 0x0800, 1, core, off, 1);
  break;
 case 131:
  tmp = value & 0xFF;
  b43_nphy_rf_ctl_override_rev7(dev, 0x0800, tmp, core, off, 0);
  tmp = value >> 8;
  b43_nphy_rf_ctl_override_rev7(dev, 0x6000, tmp, core, off, 0);
  break;
 case 129:
  tmp = value & 0x7FFF;
  b43_nphy_rf_ctl_override_rev7(dev, 0x1000, tmp, core, off, 0);
  tmp = value >> 14;
  b43_nphy_rf_ctl_override_rev7(dev, 0x4000, tmp, core, off, 0);
  break;
 }
}
