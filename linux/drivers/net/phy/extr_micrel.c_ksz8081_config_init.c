
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int KSZPHY_OMSO_FACTORY_TEST ;
 int MII_KSZPHY_OMSO ;
 int kszphy_config_init (struct phy_device*) ;
 int phy_clear_bits (struct phy_device*,int ,int ) ;

__attribute__((used)) static int ksz8081_config_init(struct phy_device *phydev)
{





 phy_clear_bits(phydev, MII_KSZPHY_OMSO, KSZPHY_OMSO_FACTORY_TEST);

 return kszphy_config_init(phydev);
}
