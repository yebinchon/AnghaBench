
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83867_CTRL ;
 int DP83867_SW_RESET ;
 int phy_write (struct phy_device*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dp83867_phy_reset(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESET);
 if (err < 0)
  return err;

 usleep_range(10, 20);

 return 0;
}
