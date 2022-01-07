
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {scalar_t__ type; int rev; int gmode; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_txpower_lo_control {int bbatt_list; int rfatt_list; } ;
struct b43_phy_g {int tx_control; int rfatt; int bbatt; struct b43_txpower_lo_control* lo_control; } ;


 int B43_MMIO_MACCTL ;
 scalar_t__ B43_PHYTYPE_G ;
 int B43_WARN_ON (int) ;
 int b43_phy_initg (struct b43_wldev*) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_wireless_core_reset (struct b43_wldev*,int) ;
 int default_baseband_attenuation (struct b43_wldev*,int *) ;
 int default_radio_attenuation (struct b43_wldev*,int *) ;
 int default_tx_control (struct b43_wldev*) ;
 int generate_bbatt_list (struct b43_wldev*,int *) ;
 int generate_rfatt_list (struct b43_wldev*,int *) ;

__attribute__((used)) static int b43_gphy_op_prepare_hardware(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 struct b43_txpower_lo_control *lo = gphy->lo_control;

 B43_WARN_ON(phy->type != B43_PHYTYPE_G);

 default_baseband_attenuation(dev, &gphy->bbatt);
 default_radio_attenuation(dev, &gphy->rfatt);
 gphy->tx_control = (default_tx_control(dev) << 4);
 generate_rfatt_list(dev, &lo->rfatt_list);
 generate_bbatt_list(dev, &lo->bbatt_list);


 b43_read32(dev, B43_MMIO_MACCTL);

 if (phy->rev == 1) {


  phy->gmode = 0;
  b43_wireless_core_reset(dev, 0);
  b43_phy_initg(dev);
  phy->gmode = 1;
  b43_wireless_core_reset(dev, 1);
 }

 return 0;
}
