
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_KSZPHY_INTCS ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int kszphy_ack_interrupt(struct phy_device *phydev)
{

 int rc;

 rc = phy_read(phydev, MII_KSZPHY_INTCS);

 return (rc < 0) ? rc : 0;
}
