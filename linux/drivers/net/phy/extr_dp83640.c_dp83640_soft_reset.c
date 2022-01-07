
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int genphy_soft_reset (struct phy_device*) ;
 int udelay (int) ;

__attribute__((used)) static int dp83640_soft_reset(struct phy_device *phydev)
{
 int ret;

 ret = genphy_soft_reset(phydev);
 if (ret < 0)
  return ret;





 udelay(10);

 return 0;
}
