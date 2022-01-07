
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int maj; int min; int rev; } ;
struct TYPE_6__ {TYPE_1__ ver; } ;
struct octeon_device {int chip_id; TYPE_2__ fw_info; } ;
struct TYPE_7__ {int phy_type; } ;
struct TYPE_8__ {TYPE_3__ s; } ;
struct oct_link_info {TYPE_4__ link; } ;
struct net_device {int dummy; } ;
struct lio {int phy_beacon_val; int led_ctrl_val; struct oct_link_info linfo; struct octeon_device* oct_dev; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;




 struct lio* GET_LIO (struct net_device*) ;
 int LED_IDENTIFICATION_OFF ;
 int LED_IDENTIFICATION_ON ;
 int LIO68XX_LED_BEACON_ADDR ;
 int LIO68XX_LED_BEACON_CFGON ;
 int LIO68XX_LED_CTRL_ADDR ;
 int LIO68XX_LED_CTRL_CFGON ;
 int LIO_PHY_PORT_TP ;
 int OCTEON_CN23XX_PF_VID ;
 int OCTEON_CN66XX ;
 int OCTEON_CN68XX ;
 int OCT_FW_VER (int,int,int) ;
 int VITESSE_PHY_GPIO_CFG ;
 int VITESSE_PHY_GPIO_DRIVEOFF ;
 int VITESSE_PHY_GPIO_DRIVEON ;
 int VITESSE_PHY_GPIO_HIGH ;
 int VITESSE_PHY_GPIO_LOW ;
 int octnet_gpio_access (struct net_device*,int ,int ) ;
 int octnet_id_active (struct net_device*,int ) ;
 int octnet_mdio45_access (struct lio*,int,int ,int*) ;

__attribute__((used)) static int lio_set_phys_id(struct net_device *netdev,
      enum ethtool_phys_id_state state)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct oct_link_info *linfo;
 int value, ret;
 u32 cur_ver;

 linfo = &lio->linfo;
 cur_ver = OCT_FW_VER(oct->fw_info.ver.maj,
        oct->fw_info.ver.min,
        oct->fw_info.ver.rev);

 switch (state) {
 case 131:
  if (oct->chip_id == OCTEON_CN66XX) {
   octnet_gpio_access(netdev, VITESSE_PHY_GPIO_CFG,
        VITESSE_PHY_GPIO_DRIVEON);
   return 2;

  } else if (oct->chip_id == OCTEON_CN68XX) {

   ret = octnet_mdio45_access(lio, 0,
         LIO68XX_LED_BEACON_ADDR,
         &lio->phy_beacon_val);
   if (ret)
    return ret;

   ret = octnet_mdio45_access(lio, 0,
         LIO68XX_LED_CTRL_ADDR,
         &lio->led_ctrl_val);
   if (ret)
    return ret;


   value = LIO68XX_LED_BEACON_CFGON;
   ret = octnet_mdio45_access(lio, 1,
         LIO68XX_LED_BEACON_ADDR,
         &value);
   if (ret)
    return ret;

   value = LIO68XX_LED_CTRL_CFGON;
   ret = octnet_mdio45_access(lio, 1,
         LIO68XX_LED_CTRL_ADDR,
         &value);
   if (ret)
    return ret;
  } else if (oct->chip_id == OCTEON_CN23XX_PF_VID) {
   octnet_id_active(netdev, LED_IDENTIFICATION_ON);
   if (linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
       cur_ver > OCT_FW_VER(1, 7, 2))
    return 2;
   else
    return 0;
  } else {
   return -EINVAL;
  }
  break;

 case 128:
  if (oct->chip_id == OCTEON_CN23XX_PF_VID &&
      linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
      cur_ver > OCT_FW_VER(1, 7, 2))
   octnet_id_active(netdev, LED_IDENTIFICATION_ON);
  else if (oct->chip_id == OCTEON_CN66XX)
   octnet_gpio_access(netdev, VITESSE_PHY_GPIO_CFG,
        VITESSE_PHY_GPIO_HIGH);
  else
   return -EINVAL;

  break;

 case 129:
  if (oct->chip_id == OCTEON_CN23XX_PF_VID &&
      linfo->link.s.phy_type == LIO_PHY_PORT_TP &&
      cur_ver > OCT_FW_VER(1, 7, 2))
   octnet_id_active(netdev, LED_IDENTIFICATION_OFF);
  else if (oct->chip_id == OCTEON_CN66XX)
   octnet_gpio_access(netdev, VITESSE_PHY_GPIO_CFG,
        VITESSE_PHY_GPIO_LOW);
  else
   return -EINVAL;

  break;

 case 130:
  if (oct->chip_id == OCTEON_CN66XX) {
   octnet_gpio_access(netdev, VITESSE_PHY_GPIO_CFG,
        VITESSE_PHY_GPIO_DRIVEOFF);
  } else if (oct->chip_id == OCTEON_CN68XX) {

   ret = octnet_mdio45_access(lio, 1,
         LIO68XX_LED_CTRL_ADDR,
         &lio->led_ctrl_val);
   if (ret)
    return ret;

   ret = octnet_mdio45_access(lio, 1,
         LIO68XX_LED_BEACON_ADDR,
         &lio->phy_beacon_val);
   if (ret)
    return ret;
  } else if (oct->chip_id == OCTEON_CN23XX_PF_VID) {
   octnet_id_active(netdev, LED_IDENTIFICATION_OFF);

   return 0;
  } else {
   return -EINVAL;
  }
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
