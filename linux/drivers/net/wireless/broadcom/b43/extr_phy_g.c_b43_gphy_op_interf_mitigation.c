
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {scalar_t__ type; scalar_t__ rev; int gmode; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int aci_wlan_automatic; int aci_enable; int interfmode; int aci_hw_rssi; } ;
typedef enum b43_interference_mitigation { ____Placeholder_b43_interference_mitigation } b43_interference_mitigation ;






 scalar_t__ B43_PHYTYPE_G ;
 int B43_WARN_ON (int) ;
 int EINVAL ;
 int ENODEV ;
 int b43_radio_interference_mitigation_disable (struct b43_wldev*,int) ;
 int b43_radio_interference_mitigation_enable (struct b43_wldev*,int) ;

__attribute__((used)) static int b43_gphy_op_interf_mitigation(struct b43_wldev *dev,
      enum b43_interference_mitigation mode)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 int currentmode;

 B43_WARN_ON(phy->type != B43_PHYTYPE_G);
 if ((phy->rev == 0) || (!phy->gmode))
  return -ENODEV;

 gphy->aci_wlan_automatic = 0;
 switch (mode) {
 case 131:
  gphy->aci_wlan_automatic = 1;
  if (gphy->aci_enable)
   mode = 130;
  else
   mode = 129;
  break;
 case 129:
 case 128:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 currentmode = gphy->interfmode;
 if (currentmode == mode)
  return 0;
 if (currentmode != 129)
  b43_radio_interference_mitigation_disable(dev, currentmode);

 if (mode == 129) {
  gphy->aci_enable = 0;
  gphy->aci_hw_rssi = 0;
 } else
  b43_radio_interference_mitigation_enable(dev, mode);
 gphy->interfmode = mode;

 return 0;
}
