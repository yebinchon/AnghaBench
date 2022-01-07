
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_AM79C_IR ;
 int MII_BMSR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int am79c_ack_interrupt(struct phy_device *phydev)
{
 int err;

 err = phy_read(phydev, MII_BMSR);
 if (err < 0)
  return err;

 err = phy_read(phydev, MII_AM79C_IR);
 if (err < 0)
  return err;

 return 0;
}
