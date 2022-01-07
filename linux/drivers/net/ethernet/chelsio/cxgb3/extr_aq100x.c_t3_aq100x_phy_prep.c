
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;


 int AQ_FW_VERSION ;
 unsigned int AQ_LOWPOWER ;
 unsigned int AQ_RESET ;
 int AQ_XAUI_RX_CFG ;
 int AQ_XAUI_TX_CFG ;
 int A_T3DBG_GPIO_EN ;
 int CH_WARN (struct adapter*,char*,int,...) ;
 unsigned int F_GPIO10_OUT_VAL ;
 unsigned int F_GPIO6_OUT_VAL ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_VEND1 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int aq100x_ops ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,unsigned int,int ) ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int t3_set_reg_field (struct adapter*,int ,unsigned int,unsigned int) ;

int t3_aq100x_phy_prep(struct cphy *phy, struct adapter *adapter, int phy_addr,
         const struct mdio_ops *mdio_ops)
{
 unsigned int v, v2, gpio, wait;
 int err;

 cphy_init(phy, adapter, phy_addr, &aq100x_ops, mdio_ops,
    SUPPORTED_1000baseT_Full | SUPPORTED_10000baseT_Full |
    SUPPORTED_TP | SUPPORTED_Autoneg | SUPPORTED_AUI,
    "1000/10GBASE-T");





 gpio = phy_addr ? F_GPIO10_OUT_VAL : F_GPIO6_OUT_VAL;
 t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, gpio, 0);
 msleep(1);
 t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, gpio, gpio);




 msleep(1000);
 wait = 500;
 do {
  err = t3_mdio_read(phy, MDIO_MMD_VEND1, MDIO_CTRL1, &v);
  if (err || v == 0xffff) {



   CH_WARN(adapter, "PHY%d: reset failed (0x%x, 0x%x).\n",
    phy_addr, err, v);
   goto done;
  }

  v &= AQ_RESET;
  if (v)
   msleep(10);
 } while (v && --wait);
 if (v) {
  CH_WARN(adapter, "PHY%d: reset timed out (0x%x).\n",
   phy_addr, v);

  goto done;
 }


 wait = (500 - wait) * 10 + 1000;
 if (wait > 3000)
  CH_WARN(adapter, "PHY%d: reset took %ums\n", phy_addr, wait);


 t3_mdio_read(phy, MDIO_MMD_VEND1, AQ_FW_VERSION, &v);
 if (v != 101)
  CH_WARN(adapter, "PHY%d: unsupported firmware %d\n",
   phy_addr, v);





 err = t3_mdio_read(phy, MDIO_MMD_VEND1, MDIO_CTRL1, &v);
 if (err)
  return err;
 if (v & AQ_LOWPOWER) {
  err = t3_mdio_change_bits(phy, MDIO_MMD_VEND1, MDIO_CTRL1,
       AQ_LOWPOWER, 0);
  if (err)
   return err;
  msleep(10);
 } else
  CH_WARN(adapter, "PHY%d does not start in low power mode.\n",
   phy_addr);




 v = v2 = 0;
 t3_mdio_read(phy, MDIO_MMD_PHYXS, AQ_XAUI_RX_CFG, &v);
 t3_mdio_read(phy, MDIO_MMD_PHYXS, AQ_XAUI_TX_CFG, &v2);
 if (v != 0x1b || v2 != 0x1b)
  CH_WARN(adapter,
   "PHY%d: incorrect XAUI settings (0x%x, 0x%x).\n",
   phy_addr, v, v2);

done:
 return err;
}
