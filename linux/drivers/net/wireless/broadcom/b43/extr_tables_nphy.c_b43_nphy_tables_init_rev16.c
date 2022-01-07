
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ do_full_init; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_NTAB_NOISEVAR_R7 ;
 int b43_nphy_tables_init_rev7_volatile (struct b43_wldev*) ;
 int b43_nphy_tables_init_shared_lut (struct b43_wldev*) ;
 int b43_ntab_noisevar_r7 ;
 int ntab_upload (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_nphy_tables_init_rev16(struct b43_wldev *dev)
{

 if (dev->phy.do_full_init) {
  ntab_upload(dev, B43_NTAB_NOISEVAR_R7, b43_ntab_noisevar_r7);
  b43_nphy_tables_init_shared_lut(dev);
 }


 b43_nphy_tables_init_rev7_volatile(dev);
}
