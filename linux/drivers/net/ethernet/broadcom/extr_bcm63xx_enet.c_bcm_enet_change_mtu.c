
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct bcm_enet_priv {int hw_mtu; int dma_maxburst; int rx_skb_size; } ;


 int ALIGN (scalar_t__,int) ;
 int EBUSY ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ VLAN_ETH_HLEN ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bcm_enet_change_mtu(struct net_device *dev, int new_mtu)
{
 struct bcm_enet_priv *priv = netdev_priv(dev);
 int actual_mtu = new_mtu;

 if (netif_running(dev))
  return -EBUSY;


 actual_mtu += VLAN_ETH_HLEN;







 priv->hw_mtu = actual_mtu;





 priv->rx_skb_size = ALIGN(actual_mtu + ETH_FCS_LEN,
      priv->dma_maxburst * 4);

 dev->mtu = new_mtu;
 return 0;
}
