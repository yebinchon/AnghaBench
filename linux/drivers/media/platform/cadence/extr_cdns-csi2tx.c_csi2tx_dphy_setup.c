
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi2tx_priv {unsigned int num_lanes; scalar_t__ base; scalar_t__* lanes; } ;


 int CSI2TX_DPHY_CFG_CLK_RESET ;
 int CSI2TX_DPHY_CFG_LANE_RESET (scalar_t__) ;
 int CSI2TX_DPHY_CFG_MODE_LPDT ;
 scalar_t__ CSI2TX_DPHY_CFG_REG ;
 int csi2tx_dphy_init_finish (struct csi2tx_priv*,int) ;
 int csi2tx_dphy_set_wakeup (struct csi2tx_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2tx_dphy_setup(struct csi2tx_priv *csi2tx)
{
 u32 reg;
 unsigned int i;

 csi2tx_dphy_set_wakeup(csi2tx);


 reg = CSI2TX_DPHY_CFG_CLK_RESET | CSI2TX_DPHY_CFG_MODE_LPDT;
 for (i = 0; i < csi2tx->num_lanes; i++)
  reg |= CSI2TX_DPHY_CFG_LANE_RESET(csi2tx->lanes[i] - 1);
 writel(reg, csi2tx->base + CSI2TX_DPHY_CFG_REG);

 csi2tx_dphy_init_finish(csi2tx, reg);
}
