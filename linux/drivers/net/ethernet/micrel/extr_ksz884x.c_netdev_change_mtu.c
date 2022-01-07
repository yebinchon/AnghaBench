
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ksz_hw {int dev_count; int features; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int mtu; struct net_device* dev; struct ksz_hw hw; } ;


 int EBUSY ;
 int ETHERNET_HEADER_SIZE ;
 int MAX_RX_BUF_SIZE ;
 int REGULAR_RX_BUF_SIZE ;
 int RX_HUGE_FRAME ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int netdev_change_mtu(struct net_device *dev, int new_mtu)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;
 int hw_mtu;

 if (netif_running(dev))
  return -EBUSY;


 if (hw->dev_count > 1)
  if (dev != hw_priv->dev)
   return 0;

 hw_mtu = new_mtu + ETHERNET_HEADER_SIZE + 4;
 if (hw_mtu > REGULAR_RX_BUF_SIZE) {
  hw->features |= RX_HUGE_FRAME;
  hw_mtu = MAX_RX_BUF_SIZE;
 } else {
  hw->features &= ~RX_HUGE_FRAME;
  hw_mtu = REGULAR_RX_BUF_SIZE;
 }
 hw_mtu = (hw_mtu + 3) & ~3;
 hw_priv->mtu = hw_mtu;
 dev->mtu = new_mtu;

 return 0;
}
