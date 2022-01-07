
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi2tx_priv {scalar_t__ base; } ;


 scalar_t__ CSI2TX_DPHY_CLK_WAKEUP_REG ;
 int CSI2TX_DPHY_CLK_WAKEUP_ULPS_CYCLES (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void csi2tx_dphy_set_wakeup(struct csi2tx_priv *csi2tx)
{
 writel(CSI2TX_DPHY_CLK_WAKEUP_ULPS_CYCLES(32),
        csi2tx->base + CSI2TX_DPHY_CLK_WAKEUP_REG);
}
