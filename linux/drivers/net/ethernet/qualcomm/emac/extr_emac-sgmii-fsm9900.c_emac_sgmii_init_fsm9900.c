
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_sgmii {scalar_t__ base; } ;
struct emac_adapter {int netdev; struct emac_sgmii phy; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 scalar_t__ EMAC_QSERDES_COM_RESET_SM ;
 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_MASK ;
 scalar_t__ EMAC_SGMII_PHY_SERDES_START ;
 int READY ;
 int SERDES_START ;
 unsigned int SERDES_START_WAIT_TIMES ;
 int cdr_setting ;
 int emac_reg_write_all (scalar_t__,int ,int ) ;
 int netdev_err (int ,char*) ;
 int physical_coding_sublayer_programming ;
 int pll_setting ;
 int readl (scalar_t__) ;
 int sysclk_refclk_setting ;
 int tx_rx_setting ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

int emac_sgmii_init_fsm9900(struct emac_adapter *adpt)
{
 struct emac_sgmii *phy = &adpt->phy;
 unsigned int i;

 emac_reg_write_all(phy->base, physical_coding_sublayer_programming,
      ARRAY_SIZE(physical_coding_sublayer_programming));
 emac_reg_write_all(phy->base, sysclk_refclk_setting,
      ARRAY_SIZE(sysclk_refclk_setting));
 emac_reg_write_all(phy->base, pll_setting, ARRAY_SIZE(pll_setting));
 emac_reg_write_all(phy->base, cdr_setting, ARRAY_SIZE(cdr_setting));
 emac_reg_write_all(phy->base, tx_rx_setting, ARRAY_SIZE(tx_rx_setting));


 writel(SERDES_START, phy->base + EMAC_SGMII_PHY_SERDES_START);

 for (i = 0; i < SERDES_START_WAIT_TIMES; i++) {
  if (readl(phy->base + EMAC_QSERDES_COM_RESET_SM) & READY)
   break;
  usleep_range(100, 200);
 }

 if (i == SERDES_START_WAIT_TIMES) {
  netdev_err(adpt->netdev, "error: ser/des failed to start\n");
  return -EIO;
 }

 writel(0, phy->base + EMAC_SGMII_PHY_INTERRUPT_MASK);

 return 0;
}
