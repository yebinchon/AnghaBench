
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_DP83811_INT_STAT1 ;
 int MII_DP83811_INT_STAT2 ;
 int MII_DP83811_INT_STAT3 ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int dp83811_ack_interrupt(struct phy_device *phydev)
{
 int err;

 err = phy_read(phydev, MII_DP83811_INT_STAT1);
 if (err < 0)
  return err;

 err = phy_read(phydev, MII_DP83811_INT_STAT2);
 if (err < 0)
  return err;

 err = phy_read(phydev, MII_DP83811_INT_STAT3);
 if (err < 0)
  return err;

 return 0;
}
