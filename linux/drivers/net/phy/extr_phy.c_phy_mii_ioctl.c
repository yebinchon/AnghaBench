
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int addr; int bus; } ;
struct phy_device {TYPE_2__* drv; TYPE_1__ mdio; int advertising; int autoneg; int speed; int duplex; } ;
struct mii_ioctl_data {int val_in; int phy_id; int reg_num; int val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_4__ {int (* hwtstamp ) (struct phy_device*,struct ifreq*) ;} ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EOPNOTSUPP ;
 int MII_ADDR_C45 ;







 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_phy_id_devad (int) ;
 int mdio_phy_id_is_c45 (int) ;
 int mdio_phy_id_prtad (int) ;
 int mdiobus_read (int ,int,int) ;
 int mdiobus_write (int ,int,int,int) ;
 int mii_adv_mod_linkmode_adv_t (int ,int) ;
 int mii_ctrl1000_mod_linkmode_adv_t (int ,int) ;
 int phy_init_hw (struct phy_device*) ;
 int phy_start_aneg (struct phy_device*) ;
 int stub1 (struct phy_device*,struct ifreq*) ;

int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *mii_data = if_mii(ifr);
 u16 val = mii_data->val_in;
 bool change_autoneg = 0;
 int prtad, devad;

 switch (cmd) {
 case 131:
  mii_data->phy_id = phydev->mdio.addr;


 case 130:
  if (mdio_phy_id_is_c45(mii_data->phy_id)) {
   prtad = mdio_phy_id_prtad(mii_data->phy_id);
   devad = mdio_phy_id_devad(mii_data->phy_id);
   devad = MII_ADDR_C45 | devad << 16 | mii_data->reg_num;
  } else {
   prtad = mii_data->phy_id;
   devad = mii_data->reg_num;
  }
  mii_data->val_out = mdiobus_read(phydev->mdio.bus, prtad,
       devad);
  return 0;

 case 128:
  if (mdio_phy_id_is_c45(mii_data->phy_id)) {
   prtad = mdio_phy_id_prtad(mii_data->phy_id);
   devad = mdio_phy_id_devad(mii_data->phy_id);
   devad = MII_ADDR_C45 | devad << 16 | mii_data->reg_num;
  } else {
   prtad = mii_data->phy_id;
   devad = mii_data->reg_num;
  }
  if (prtad == phydev->mdio.addr) {
   switch (devad) {
   case 133:
    if ((val & (BMCR_RESET | BMCR_ANENABLE)) == 0) {
     if (phydev->autoneg == AUTONEG_ENABLE)
      change_autoneg = 1;
     phydev->autoneg = AUTONEG_DISABLE;
     if (val & BMCR_FULLDPLX)
      phydev->duplex = DUPLEX_FULL;
     else
      phydev->duplex = DUPLEX_HALF;
     if (val & BMCR_SPEED1000)
      phydev->speed = SPEED_1000;
     else if (val & BMCR_SPEED100)
      phydev->speed = SPEED_100;
     else phydev->speed = SPEED_10;
    }
    else {
     if (phydev->autoneg == AUTONEG_DISABLE)
      change_autoneg = 1;
     phydev->autoneg = AUTONEG_ENABLE;
    }
    break;
   case 134:
    mii_adv_mod_linkmode_adv_t(phydev->advertising,
          val);
    change_autoneg = 1;
    break;
   case 132:
    mii_ctrl1000_mod_linkmode_adv_t(phydev->advertising,
               val);
    change_autoneg = 1;
    break;
   default:

    break;
   }
  }

  mdiobus_write(phydev->mdio.bus, prtad, devad, val);

  if (prtad == phydev->mdio.addr &&
      devad == 133 &&
      val & BMCR_RESET)
   return phy_init_hw(phydev);

  if (change_autoneg)
   return phy_start_aneg(phydev);

  return 0;

 case 129:
  if (phydev->drv && phydev->drv->hwtstamp)
   return phydev->drv->hwtstamp(phydev, ifr);


 default:
  return -EOPNOTSUPP;
 }
}
