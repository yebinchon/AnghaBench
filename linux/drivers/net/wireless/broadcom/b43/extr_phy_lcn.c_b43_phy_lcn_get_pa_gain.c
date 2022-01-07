
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_phy_read (struct b43_wldev*,int) ;

__attribute__((used)) static u16 b43_phy_lcn_get_pa_gain(struct b43_wldev *dev)
{
 return (b43_phy_read(dev, 0x4fb) & 0x7f00) >> 8;
}
