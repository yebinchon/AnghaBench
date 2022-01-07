
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83848_MISR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int dp83848_ack_interrupt(struct phy_device *phydev)
{
 int err = phy_read(phydev, DP83848_MISR);

 return err < 0 ? err : 0;
}
