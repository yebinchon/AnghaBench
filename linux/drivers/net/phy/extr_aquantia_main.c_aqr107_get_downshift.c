
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;


 int DOWNSHIFT_DEV_DISABLE ;
 int FIELD_GET (int ,int) ;
 int MDIO_AN_VEND_PROV ;
 int MDIO_AN_VEND_PROV_DOWNSHIFT_EN ;
 int MDIO_AN_VEND_PROV_DOWNSHIFT_MASK ;
 int MDIO_MMD_AN ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr107_get_downshift(struct phy_device *phydev, u8 *data)
{
 int val, cnt, enable;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_VEND_PROV);
 if (val < 0)
  return val;

 enable = FIELD_GET(MDIO_AN_VEND_PROV_DOWNSHIFT_EN, val);
 cnt = FIELD_GET(MDIO_AN_VEND_PROV_DOWNSHIFT_MASK, val);

 *data = enable && cnt ? cnt : DOWNSHIFT_DEV_DISABLE;

 return 0;
}
