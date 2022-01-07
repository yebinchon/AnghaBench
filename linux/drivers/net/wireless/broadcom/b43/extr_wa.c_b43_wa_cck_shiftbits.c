
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_PHY_CCKSHIFTBITS ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_wa_cck_shiftbits(struct b43_wldev *dev)
{
 b43_phy_write(dev, B43_PHY_CCKSHIFTBITS, 0x0026);
}
