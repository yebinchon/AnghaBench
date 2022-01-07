
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ADIN1300_INT_STATUS_REG ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int adin_phy_ack_intr(struct phy_device *phydev)
{

 int rc = phy_read(phydev, ADIN1300_INT_STATUS_REG);

 return rc < 0 ? rc : 0;
}
