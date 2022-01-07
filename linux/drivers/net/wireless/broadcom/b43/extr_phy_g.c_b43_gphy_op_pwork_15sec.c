
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_phy {int rev; TYPE_1__* ops; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {scalar_t__ interfmode; scalar_t__ aci_enable; scalar_t__ aci_wlan_automatic; } ;
struct TYPE_2__ {int (* interf_mitigation ) (struct b43_wldev*,int ) ;} ;


 int B43_INTERFMODE_MANUALWLAN ;
 int B43_INTERFMODE_NONE ;
 scalar_t__ B43_INTERFMODE_NONWLAN ;
 int b43_gphy_aci_scan (struct b43_wldev*) ;
 int b43_lo_g_maintenance_work (struct b43_wldev*) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int stub1 (struct b43_wldev*,int ) ;
 int stub2 (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_gphy_op_pwork_15sec(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;

 b43_mac_suspend(dev);

 if (gphy->aci_enable && gphy->aci_wlan_automatic) {
  if (!gphy->aci_enable && 1 ) {
   if (0 ) {
    phy->ops->interf_mitigation(dev,
     B43_INTERFMODE_MANUALWLAN);
   }
  } else if (0 ) {
      if ( !b43_gphy_aci_scan(dev))
    phy->ops->interf_mitigation(dev, B43_INTERFMODE_NONE);
  }
 } else if (gphy->interfmode == B43_INTERFMODE_NONWLAN &&
     phy->rev == 1) {

 }
 b43_lo_g_maintenance_work(dev);
 b43_mac_enable(dev);
}
