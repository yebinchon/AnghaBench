
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int ETIMEDOUT ;
 int phy_read (struct phy_device*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tja11xx_check(struct phy_device *phydev, u8 reg, u16 mask, u16 set)
{
 int i, ret;

 for (i = 0; i < 200; i++) {
  ret = phy_read(phydev, reg);
  if (ret < 0)
   return ret;

  if ((ret & mask) == set)
   return 0;

  usleep_range(100, 150);
 }

 return -ETIMEDOUT;
}
