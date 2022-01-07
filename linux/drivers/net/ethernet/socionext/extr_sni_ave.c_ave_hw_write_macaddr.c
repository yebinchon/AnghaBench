
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;


 struct ave_private* netdev_priv (struct net_device*) ;
 int writel (unsigned char const,scalar_t__) ;

__attribute__((used)) static void ave_hw_write_macaddr(struct net_device *ndev,
     const unsigned char *mac_addr,
     int reg1, int reg2)
{
 struct ave_private *priv = netdev_priv(ndev);

 writel(mac_addr[0] | mac_addr[1] << 8 |
        mac_addr[2] << 16 | mac_addr[3] << 24, priv->base + reg1);
 writel(mac_addr[4] | mac_addr[5] << 8, priv->base + reg2);
}
