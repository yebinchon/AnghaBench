
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct xgmac_priv {int rx_pause; int tx_pause; scalar_t__ base; } ;


 unsigned int PAUSE_TIME ;
 scalar_t__ XGMAC_FLOW_CTRL ;
 unsigned int XGMAC_FLOW_CTRL_PLT ;
 unsigned int XGMAC_FLOW_CTRL_PT_SHIFT ;
 unsigned int XGMAC_FLOW_CTRL_RFE ;
 unsigned int XGMAC_FLOW_CTRL_TFE ;
 unsigned int XGMAC_FLOW_CTRL_UP ;
 scalar_t__ XGMAC_OMR ;
 unsigned int XGMAC_OMR_EFC ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int xgmac_set_flow_ctrl(struct xgmac_priv *priv, int rx, int tx)
{
 u32 reg;
 unsigned int flow = 0;

 priv->rx_pause = rx;
 priv->tx_pause = tx;

 if (rx || tx) {
  if (rx)
   flow |= XGMAC_FLOW_CTRL_RFE;
  if (tx)
   flow |= XGMAC_FLOW_CTRL_TFE;

  flow |= XGMAC_FLOW_CTRL_PLT | XGMAC_FLOW_CTRL_UP;
  flow |= (PAUSE_TIME << XGMAC_FLOW_CTRL_PT_SHIFT);

  writel(flow, priv->base + XGMAC_FLOW_CTRL);

  reg = readl(priv->base + XGMAC_OMR);
  reg |= XGMAC_OMR_EFC;
  writel(reg, priv->base + XGMAC_OMR);
 } else {
  writel(0, priv->base + XGMAC_FLOW_CTRL);

  reg = readl(priv->base + XGMAC_OMR);
  reg &= ~XGMAC_OMR_EFC;
  writel(reg, priv->base + XGMAC_OMR);
 }

 return 0;
}
