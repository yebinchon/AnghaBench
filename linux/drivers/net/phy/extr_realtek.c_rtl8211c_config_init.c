
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int CTL1000_AS_MASTER ;
 int CTL1000_ENABLE_MASTER ;
 int MII_CTRL1000 ;
 int phy_set_bits (struct phy_device*,int ,int) ;

__attribute__((used)) static int rtl8211c_config_init(struct phy_device *phydev)
{

 return phy_set_bits(phydev, MII_CTRL1000,
       CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER);
}
