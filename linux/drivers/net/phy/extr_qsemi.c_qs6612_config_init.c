
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_QS6612_PCR ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int qs6612_config_init(struct phy_device *phydev)
{
 return phy_write(phydev, MII_QS6612_PCR, 0x0dc0);
}
