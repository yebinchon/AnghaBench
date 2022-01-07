
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink {struct phy_device* phydev; } ;
struct TYPE_4__ {int bus; } ;
struct TYPE_3__ {int devices_in_package; } ;
struct phy_device {TYPE_2__ mdio; TYPE_1__ c45_ids; scalar_t__ is_c45; } ;


 int EINVAL ;
 unsigned int MDIO_AN_ADVERTISE ;
 unsigned int MDIO_AN_LPA ;
 int MDIO_DEVS_AN ;
 int MDIO_MMD_AN ;
 int MII_ADDR_C45 ;






 int __ffs (int) ;
 int mdio_phy_id_devad (unsigned int) ;
 scalar_t__ mdio_phy_id_is_c45 (unsigned int) ;
 int mdio_phy_id_prtad (unsigned int) ;
 int mdiobus_write (int ,int,int,unsigned int) ;

__attribute__((used)) static int phylink_phy_write(struct phylink *pl, unsigned int phy_id,
        unsigned int reg, unsigned int val)
{
 struct phy_device *phydev = pl->phydev;
 int prtad, devad;

 if (mdio_phy_id_is_c45(phy_id)) {
  prtad = mdio_phy_id_prtad(phy_id);
  devad = mdio_phy_id_devad(phy_id);
  devad = MII_ADDR_C45 | devad << 16 | reg;
 } else if (phydev->is_c45) {
  switch (reg) {
  case 132:
  case 131:
  case 129:
  case 128:
   devad = __ffs(phydev->c45_ids.devices_in_package);
   break;
  case 133:
  case 130:
   if (!(phydev->c45_ids.devices_in_package & MDIO_DEVS_AN))
    return -EINVAL;
   devad = MDIO_MMD_AN;
   if (reg == 133)
    reg = MDIO_AN_ADVERTISE;
   else
    reg = MDIO_AN_LPA;
   break;
  default:
   return -EINVAL;
  }
  prtad = phy_id;
  devad = MII_ADDR_C45 | devad << 16 | reg;
 } else {
  prtad = phy_id;
  devad = reg;
 }

 return mdiobus_write(phydev->mdio.bus, prtad, devad, val);
}
