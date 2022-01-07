
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_gphy_dc_lt_init (struct b43_wldev*,int) ;
 scalar_t__ b43_has_hardware_pctl (struct b43_wldev*) ;
 int lo_read_power_vector (struct b43_wldev*) ;

void b43_lo_g_init(struct b43_wldev *dev)
{
 if (b43_has_hardware_pctl(dev)) {
  lo_read_power_vector(dev);
  b43_gphy_dc_lt_init(dev, 1);
 }
}
