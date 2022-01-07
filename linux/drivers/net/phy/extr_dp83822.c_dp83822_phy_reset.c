
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83822_HW_RESET ;
 int MII_DP83822_RESET_CTRL ;
 int dp83822_config_init (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int dp83822_phy_reset(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_DP83822_RESET_CTRL, DP83822_HW_RESET);
 if (err < 0)
  return err;

 dp83822_config_init(phydev);

 return 0;
}
