
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct vsc8531_private {int pkg_init; int nleds; int * leds_mode; scalar_t__ base_addr; } ;
struct TYPE_6__ {TYPE_3__* bus; scalar_t__ addr; } ;
struct phy_device {int phy_id; scalar_t__ interface; TYPE_2__ mdio; TYPE_1__* drv; int mdix_ctrl; struct vsc8531_private* priv; } ;
struct TYPE_7__ {int mdio_lock; } ;
struct TYPE_5__ {int phy_id_mask; } ;


 int EINVAL ;
 int ETH_TP_MDI_AUTO ;
 int MAC_CFG_MASK ;
 int MAC_CFG_QSGMII ;
 int MAC_CFG_SGMII ;
 int MEDIA_OP_MODE_COPPER ;
 int MEDIA_OP_MODE_MASK ;
 int MSCC_EXT_PAGE_ACCESS ;
 int MSCC_PHY_ACTIPHY_CNTL ;
 int MSCC_PHY_EXT_PHY_CNTL_1 ;
 int MSCC_PHY_EXT_PHY_CNTL_4 ;
 int MSCC_PHY_MAC_CFG_FASTLINK ;
 int MSCC_PHY_PAGE_EXTENDED ;
 int MSCC_PHY_PAGE_EXTENDED_GPIO ;
 int MSCC_PHY_PAGE_STANDARD ;
 int PHY_ADDR_REVERSED ;
 int PHY_CNTL_4_ADDR_POS ;
 int PHY_ID_VSC8574 ;
 int PHY_ID_VSC8584 ;
 scalar_t__ PHY_INTERFACE_MODE_QSGMII ;
 int PROC_CMD_FIBER_1000BASE_X ;
 int PROC_CMD_FIBER_100BASE_FX ;
 int PROC_CMD_FIBER_DISABLE ;
 int PROC_CMD_FIBER_MEDIA_CONF ;
 int PROC_CMD_FIBER_PORT (int) ;
 int PROC_CMD_MCB_ACCESS_MAC_CONF ;
 int PROC_CMD_QSGMII_MAC ;
 int PROC_CMD_READ_MOD_WRITE_PORT ;
 int PROC_CMD_RST_CONF_PORT ;
 int PROC_CMD_SGMII_MAC ;
 int VSC8584_MAC_IF_SELECTION_MASK ;
 int VSC8584_MAC_IF_SELECTION_POS ;
 int VSC8584_MAC_IF_SELECTION_SGMII ;
 int __mdiobus_read (TYPE_3__*,scalar_t__,int ) ;
 int __mdiobus_write (TYPE_3__*,scalar_t__,int ,int ) ;
 int genphy_soft_reset (struct phy_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_base_read (struct phy_device*,int ) ;
 int phy_base_write (struct phy_device*,int ,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int usleep_range (int,int) ;
 int vsc8574_config_pre_init (struct phy_device*) ;
 int vsc8584_cmd (struct phy_device*,int) ;
 int vsc8584_config_pre_init (struct phy_device*) ;
 int vsc8584_is_pkg_init (struct phy_device*,int) ;
 int vsc85xx_led_cntl_set (struct phy_device*,int,int ) ;

__attribute__((used)) static int vsc8584_config_init(struct phy_device *phydev)
{
 struct vsc8531_private *vsc8531 = phydev->priv;
 u16 addr, val;
 int ret, i;

 phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

 mutex_lock(&phydev->mdio.bus->mdio_lock);

 __mdiobus_write(phydev->mdio.bus, phydev->mdio.addr,
   MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);
 addr = __mdiobus_read(phydev->mdio.bus, phydev->mdio.addr,
         MSCC_PHY_EXT_PHY_CNTL_4);
 addr >>= PHY_CNTL_4_ADDR_POS;

 val = __mdiobus_read(phydev->mdio.bus, phydev->mdio.addr,
        MSCC_PHY_ACTIPHY_CNTL);
 if (val & PHY_ADDR_REVERSED)
  vsc8531->base_addr = phydev->mdio.addr + addr;
 else
  vsc8531->base_addr = phydev->mdio.addr - addr;
 if (!vsc8584_is_pkg_init(phydev, val & PHY_ADDR_REVERSED ? 1 : 0)) {
  if ((phydev->phy_id & phydev->drv->phy_id_mask) ==
      (PHY_ID_VSC8574 & phydev->drv->phy_id_mask))
   ret = vsc8574_config_pre_init(phydev);
  else if ((phydev->phy_id & phydev->drv->phy_id_mask) ==
    (PHY_ID_VSC8584 & phydev->drv->phy_id_mask))
   ret = vsc8584_config_pre_init(phydev);
  else
   ret = -EINVAL;

  if (ret)
   goto err;
 }

 vsc8531->pkg_init = 1;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS,
         MSCC_PHY_PAGE_EXTENDED_GPIO);

 val = phy_base_read(phydev, MSCC_PHY_MAC_CFG_FASTLINK);
 val &= ~MAC_CFG_MASK;
 if (phydev->interface == PHY_INTERFACE_MODE_QSGMII)
  val |= MAC_CFG_QSGMII;
 else
  val |= MAC_CFG_SGMII;

 ret = phy_base_write(phydev, MSCC_PHY_MAC_CFG_FASTLINK, val);
 if (ret)
  goto err;

 val = PROC_CMD_MCB_ACCESS_MAC_CONF | PROC_CMD_RST_CONF_PORT |
  PROC_CMD_READ_MOD_WRITE_PORT;
 if (phydev->interface == PHY_INTERFACE_MODE_QSGMII)
  val |= PROC_CMD_QSGMII_MAC;
 else
  val |= PROC_CMD_SGMII_MAC;

 ret = vsc8584_cmd(phydev, val);
 if (ret)
  goto err;

 usleep_range(10000, 20000);


 ret = vsc8584_cmd(phydev, PROC_CMD_FIBER_MEDIA_CONF |
     PROC_CMD_FIBER_PORT(addr) | PROC_CMD_FIBER_DISABLE |
     PROC_CMD_READ_MOD_WRITE_PORT |
     PROC_CMD_RST_CONF_PORT | PROC_CMD_FIBER_100BASE_FX);
 if (ret)
  goto err;


 ret = vsc8584_cmd(phydev, PROC_CMD_FIBER_MEDIA_CONF |
     PROC_CMD_FIBER_PORT(addr) | PROC_CMD_FIBER_DISABLE |
     PROC_CMD_READ_MOD_WRITE_PORT |
     PROC_CMD_RST_CONF_PORT | PROC_CMD_FIBER_1000BASE_X);
 if (ret)
  goto err;

 mutex_unlock(&phydev->mdio.bus->mdio_lock);

 phy_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

 val = phy_read(phydev, MSCC_PHY_EXT_PHY_CNTL_1);
 val &= ~(MEDIA_OP_MODE_MASK | VSC8584_MAC_IF_SELECTION_MASK);
 val |= MEDIA_OP_MODE_COPPER | (VSC8584_MAC_IF_SELECTION_SGMII <<
           VSC8584_MAC_IF_SELECTION_POS);
 ret = phy_write(phydev, MSCC_PHY_EXT_PHY_CNTL_1, val);

 ret = genphy_soft_reset(phydev);
 if (ret)
  return ret;

 for (i = 0; i < vsc8531->nleds; i++) {
  ret = vsc85xx_led_cntl_set(phydev, i, vsc8531->leds_mode[i]);
  if (ret)
   return ret;
 }

 return 0;

err:
 mutex_unlock(&phydev->mdio.bus->mdio_lock);
 return ret;
}
