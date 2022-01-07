
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_GTABCTL ;
 int B43_PHY_GTABDATA ;
 int b43_phy_write (struct b43_wldev*,int ,scalar_t__) ;

void b43_gtab_write(struct b43_wldev *dev, u16 table, u16 offset, u16 value)
{
 b43_phy_write(dev, B43_PHY_GTABCTL, table + offset);
 b43_phy_write(dev, B43_PHY_GTABDATA, value);
}
