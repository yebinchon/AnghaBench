
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int * tx; } ;
typedef int netdev_tx_t ;


 int lan743x_tx_xmit_frame (int *,struct sk_buff*) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_tx_t lan743x_netdev_xmit_frame(struct sk_buff *skb,
          struct net_device *netdev)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 return lan743x_tx_xmit_frame(&adapter->tx[0], skb);
}
