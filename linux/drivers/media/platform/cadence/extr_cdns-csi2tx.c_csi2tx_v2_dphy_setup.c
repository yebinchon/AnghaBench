
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi2tx_priv {scalar_t__ base; } ;


 int CSI2TX_V2_DPHY_CFG_MODE_LPDT ;
 scalar_t__ CSI2TX_V2_DPHY_CFG_REG ;
 int CSI2TX_V2_DPHY_CFG_RESET ;
 int csi2tx_dphy_init_finish (struct csi2tx_priv*,int) ;
 int csi2tx_dphy_set_wakeup (struct csi2tx_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2tx_v2_dphy_setup(struct csi2tx_priv *csi2tx)
{
 u32 reg;

 csi2tx_dphy_set_wakeup(csi2tx);


 reg = CSI2TX_V2_DPHY_CFG_RESET | CSI2TX_V2_DPHY_CFG_MODE_LPDT;
 writel(reg, csi2tx->base + CSI2TX_V2_DPHY_CFG_REG);

 csi2tx_dphy_init_finish(csi2tx, reg);
}
