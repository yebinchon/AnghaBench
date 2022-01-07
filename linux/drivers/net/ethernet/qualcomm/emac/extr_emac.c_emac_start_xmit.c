
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct emac_adapter {int tx_q; } ;


 int emac_mac_tx_buf_send (struct emac_adapter*,int *,struct sk_buff*) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 return emac_mac_tx_buf_send(adpt, &adpt->tx_q, skb);
}
