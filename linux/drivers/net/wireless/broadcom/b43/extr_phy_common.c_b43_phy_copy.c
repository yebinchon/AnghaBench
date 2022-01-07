
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;

void b43_phy_copy(struct b43_wldev *dev, u16 destreg, u16 srcreg)
{
 b43_phy_write(dev, destreg, b43_phy_read(dev, srcreg));
}
