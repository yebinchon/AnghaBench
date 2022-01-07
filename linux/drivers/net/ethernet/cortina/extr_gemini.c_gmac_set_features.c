
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int config_lock; scalar_t__ gmac_base; } ;
typedef int netdev_features_t ;


 int CONFIG0_RX_CHKSUM ;
 scalar_t__ GMAC_CONFIG0 ;
 int NETIF_F_RXCSUM ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int gmac_set_features(struct net_device *netdev,
        netdev_features_t features)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 int enable = features & NETIF_F_RXCSUM;
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&port->config_lock, flags);

 reg = readl(port->gmac_base + GMAC_CONFIG0);
 reg = enable ? reg | CONFIG0_RX_CHKSUM : reg & ~CONFIG0_RX_CHKSUM;
 writel(reg, port->gmac_base + GMAC_CONFIG0);

 spin_unlock_irqrestore(&port->config_lock, flags);
 return 0;
}
