
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct au1000_private {TYPE_1__* mac; } ;
struct TYPE_2__ {int control; } ;


 int MAC_RX_ENABLE ;
 int MAC_TX_ENABLE ;
 int hw ;
 int mdelay (int) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct au1000_private*,int ,struct net_device*,char*) ;
 int readl (int *) ;
 int wmb () ;
 int writel (int,int *) ;

__attribute__((used)) static void au1000_enable_rx_tx(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 u32 reg;

 netif_dbg(aup, hw, dev, "enable_rx_tx\n");

 reg = readl(&aup->mac->control);
 reg |= (MAC_RX_ENABLE | MAC_TX_ENABLE);
 writel(reg, &aup->mac->control);
 wmb();
 mdelay(10);
}
