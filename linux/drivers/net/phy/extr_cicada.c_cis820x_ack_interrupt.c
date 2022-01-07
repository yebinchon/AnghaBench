
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_CIS8201_ISTAT ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int cis820x_ack_interrupt(struct phy_device *phydev)
{
 int err = phy_read(phydev, MII_CIS8201_ISTAT);

 return (err < 0) ? err : 0;
}
