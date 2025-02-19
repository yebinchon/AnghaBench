
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct hip04_priv {int reg_inten; scalar_t__ base; } ;


 int DEF_INT_MASK ;
 scalar_t__ GE_PORT_EN ;
 int GE_RX_INT_THRESHOLD ;
 int GE_RX_PORT_EN ;
 int GE_RX_TIMEOUT ;
 int GE_TX_PORT_EN ;
 scalar_t__ PPE_CFG_RX_PKT_INT ;
 scalar_t__ PPE_INTEN ;
 scalar_t__ PPE_RINT ;
 int RCV_INT ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hip04_mac_enable(struct net_device *ndev)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 u32 val;


 val = readl_relaxed(priv->base + GE_PORT_EN);
 val |= GE_RX_PORT_EN | GE_TX_PORT_EN;
 writel_relaxed(val, priv->base + GE_PORT_EN);


 val = RCV_INT;
 writel_relaxed(val, priv->base + PPE_RINT);


 val = GE_RX_INT_THRESHOLD | GE_RX_TIMEOUT;
 writel_relaxed(val, priv->base + PPE_CFG_RX_PKT_INT);


 priv->reg_inten = DEF_INT_MASK;
 writel_relaxed(priv->reg_inten, priv->base + PPE_INTEN);
}
