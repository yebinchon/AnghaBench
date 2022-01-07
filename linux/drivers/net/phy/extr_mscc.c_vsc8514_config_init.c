
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vsc8531_private {int pkg_init; int nleds; int * leds_mode; scalar_t__ base_addr; } ;
struct TYPE_4__ {TYPE_1__* bus; scalar_t__ addr; } ;
struct phy_device {TYPE_2__ mdio; int mdix_ctrl; struct vsc8531_private* priv; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int BIT (int) ;
 int EIO ;
 int ETH_TP_MDI_AUTO ;
 int ETIMEDOUT ;
 int MAC_CFG_MASK ;
 int MAC_CFG_QSGMII ;
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
 int PHY_MCB_S6G_CFG ;
 int PHY_MCB_TARGET ;
 int PHY_S6G_COMMON_CFG ;
 int PHY_S6G_DFT_CFG2 ;
 int PHY_S6G_ENA_LANE_POS ;
 int PHY_S6G_ENA_LOOP_POS ;
 int PHY_S6G_GPC_CFG ;
 int PHY_S6G_IB_STATUS0 ;
 int PHY_S6G_IF_MODE_POS ;
 int PHY_S6G_LCPLL_CFG ;
 int PHY_S6G_MISC_CFG ;
 int PHY_S6G_PLL5G_CFG0 ;
 int PHY_S6G_PLL_CFG ;
 int PHY_S6G_PLL_ENA_OFFS_POS ;
 int PHY_S6G_PLL_FSM_CTRL_DATA_POS ;
 int PHY_S6G_PLL_FSM_ENA_POS ;
 int PHY_S6G_PLL_STATUS ;
 int PHY_S6G_QRATE_POS ;
 int PHY_S6G_SYS_RST_POS ;
 int PROC_CMD_MCB_ACCESS_MAC_CONF ;
 int PROC_CMD_NCOMPLETED_TIMEOUT_MS ;
 int PROC_CMD_QSGMII_MAC ;
 int PROC_CMD_READ_MOD_WRITE_PORT ;
 int PROC_CMD_RST_CONF_PORT ;
 int __phy_read (struct phy_device*,int ) ;
 int __phy_write (struct phy_device*,int ,int ) ;
 int genphy_soft_reset (struct phy_device*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_base_read (struct phy_device*,int ) ;
 int phy_base_write (struct phy_device*,int ,int) ;
 int phy_commit_mcb_s6g (struct phy_device*,int ,int ) ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;
 int phy_update_mcb_s6g (struct phy_device*,int ,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int vsc8514_config_pre_init (struct phy_device*) ;
 int vsc8584_cmd (struct phy_device*,int) ;
 int vsc8584_is_pkg_init (struct phy_device*,int) ;
 int vsc85xx_csr_ctrl_phy_read (struct phy_device*,int ,int ) ;
 int vsc85xx_csr_ctrl_phy_write (struct phy_device*,int ,int ,int) ;
 int vsc85xx_led_cntl_set (struct phy_device*,int,int ) ;

__attribute__((used)) static int vsc8514_config_init(struct phy_device *phydev)
{
 struct vsc8531_private *vsc8531 = phydev->priv;
 unsigned long deadline;
 u16 val, addr;
 int ret, i;
 u32 reg;

 phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

 mutex_lock(&phydev->mdio.bus->mdio_lock);

 __phy_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

 addr = __phy_read(phydev, MSCC_PHY_EXT_PHY_CNTL_4);
 addr >>= PHY_CNTL_4_ADDR_POS;

 val = __phy_read(phydev, MSCC_PHY_ACTIPHY_CNTL);

 if (val & PHY_ADDR_REVERSED)
  vsc8531->base_addr = phydev->mdio.addr + addr;
 else
  vsc8531->base_addr = phydev->mdio.addr - addr;
 if (!vsc8584_is_pkg_init(phydev, val & PHY_ADDR_REVERSED ? 1 : 0))
  vsc8514_config_pre_init(phydev);

 vsc8531->pkg_init = 1;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS,
         MSCC_PHY_PAGE_EXTENDED_GPIO);

 val = phy_base_read(phydev, MSCC_PHY_MAC_CFG_FASTLINK);

 val &= ~MAC_CFG_MASK;
 val |= MAC_CFG_QSGMII;
 ret = phy_base_write(phydev, MSCC_PHY_MAC_CFG_FASTLINK, val);

 if (ret)
  goto err;

 ret = vsc8584_cmd(phydev,
     PROC_CMD_MCB_ACCESS_MAC_CONF |
     PROC_CMD_RST_CONF_PORT |
     PROC_CMD_READ_MOD_WRITE_PORT | PROC_CMD_QSGMII_MAC);
 if (ret)
  goto err;


 phy_update_mcb_s6g(phydev, PHY_MCB_S6G_CFG, 0);

 phy_update_mcb_s6g(phydev, PHY_S6G_LCPLL_CFG, 0);

 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_PLL5G_CFG0, 0x7036f145);
 if (ret)
  goto err;

 phy_commit_mcb_s6g(phydev, PHY_S6G_LCPLL_CFG, 0);

 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_PLL_CFG,
      (3 << PHY_S6G_PLL_ENA_OFFS_POS) |
      (120 << PHY_S6G_PLL_FSM_CTRL_DATA_POS)
      | (0 << PHY_S6G_PLL_FSM_ENA_POS));
 if (ret)
  goto err;


 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_COMMON_CFG,
      (0 << PHY_S6G_SYS_RST_POS) |
      (0 << PHY_S6G_ENA_LANE_POS) |
      (0 << PHY_S6G_ENA_LOOP_POS) |
      (0 << PHY_S6G_QRATE_POS) |
      (3 << PHY_S6G_IF_MODE_POS));
 if (ret)
  goto err;


 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_MISC_CFG, 1);
 if (ret)
  goto err;


 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_GPC_CFG, 768);
 if (ret)
  goto err;

 phy_commit_mcb_s6g(phydev, PHY_S6G_DFT_CFG2, 0);

 deadline = jiffies + msecs_to_jiffies(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
 do {
  usleep_range(500, 1000);
  phy_update_mcb_s6g(phydev, PHY_MCB_S6G_CFG,
       0);
  reg = vsc85xx_csr_ctrl_phy_read(phydev, PHY_MCB_TARGET,
      PHY_S6G_PLL_STATUS);
  if (reg == 0xffffffff) {
   mutex_unlock(&phydev->mdio.bus->mdio_lock);
   return -EIO;
  }

 } while (time_before(jiffies, deadline) && (reg & BIT(12)));

 if (reg & BIT(12)) {
  mutex_unlock(&phydev->mdio.bus->mdio_lock);
  return -ETIMEDOUT;
 }


 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET,
      PHY_S6G_MISC_CFG, 0);
 if (ret)
  goto err;

 phy_commit_mcb_s6g(phydev, PHY_MCB_S6G_CFG, 0);

 deadline = jiffies + msecs_to_jiffies(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
 do {
  usleep_range(500, 1000);
  phy_update_mcb_s6g(phydev, PHY_MCB_S6G_CFG,
       0);
  reg = vsc85xx_csr_ctrl_phy_read(phydev, PHY_MCB_TARGET,
      PHY_S6G_IB_STATUS0);
  if (reg == 0xffffffff) {
   mutex_unlock(&phydev->mdio.bus->mdio_lock);
   return -EIO;
  }

 } while (time_before(jiffies, deadline) && !(reg & BIT(8)));

 if (!(reg & BIT(8))) {
  mutex_unlock(&phydev->mdio.bus->mdio_lock);
  return -ETIMEDOUT;
 }

 mutex_unlock(&phydev->mdio.bus->mdio_lock);

 ret = phy_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

 if (ret)
  return ret;

 ret = phy_modify(phydev, MSCC_PHY_EXT_PHY_CNTL_1, MEDIA_OP_MODE_MASK,
    MEDIA_OP_MODE_COPPER);

 if (ret)
  return ret;

 ret = genphy_soft_reset(phydev);

 if (ret)
  return ret;

 for (i = 0; i < vsc8531->nleds; i++) {
  ret = vsc85xx_led_cntl_set(phydev, i, vsc8531->leds_mode[i]);
  if (ret)
   return ret;
 }

 return ret;

err:
 mutex_unlock(&phydev->mdio.bus->mdio_lock);
 return ret;
}
