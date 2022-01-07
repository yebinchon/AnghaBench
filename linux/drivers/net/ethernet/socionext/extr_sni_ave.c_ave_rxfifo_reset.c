
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ndesc; } ;
struct ave_private {scalar_t__ base; TYPE_1__ rx; } ;


 int AVE_DESC_RX_PERMIT ;
 int AVE_DESC_RX_SUSPEND ;
 scalar_t__ AVE_GISR ;
 int AVE_GI_RXOVF ;
 scalar_t__ AVE_GRR ;
 int AVE_GRR_RXFFR ;
 scalar_t__ AVE_RXCR ;
 int AVE_RXCR_RXEN ;
 int ave_desc_switch (struct net_device*,int ) ;
 int ave_rx_receive (struct net_device*,int ) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ave_rxfifo_reset(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 u32 rxcr_org;


 rxcr_org = readl(priv->base + AVE_RXCR);
 writel(rxcr_org & (~AVE_RXCR_RXEN), priv->base + AVE_RXCR);


 ave_desc_switch(ndev, AVE_DESC_RX_SUSPEND);


 ave_rx_receive(ndev, priv->rx.ndesc);


 writel(AVE_GRR_RXFFR, priv->base + AVE_GRR);
 udelay(50);


 writel(0, priv->base + AVE_GRR);
 udelay(20);


 writel(AVE_GI_RXOVF, priv->base + AVE_GISR);


 ave_desc_switch(ndev, AVE_DESC_RX_PERMIT);


 writel(rxcr_org, priv->base + AVE_RXCR);
}
