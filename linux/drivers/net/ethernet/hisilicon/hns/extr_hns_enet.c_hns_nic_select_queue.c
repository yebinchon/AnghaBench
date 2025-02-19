
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct hns_nic_priv {int enet_ver; } ;
struct ethhdr {int h_dest; } ;


 int AE_IS_VER1 (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u16
hns_nic_select_queue(struct net_device *ndev, struct sk_buff *skb,
       struct net_device *sb_dev)
{
 struct ethhdr *eth_hdr = (struct ethhdr *)skb->data;
 struct hns_nic_priv *priv = netdev_priv(ndev);


 if (!AE_IS_VER1(priv->enet_ver) &&
     is_multicast_ether_addr(eth_hdr->h_dest))
  return 0;
 else
  return netdev_pick_tx(ndev, skb, ((void*)0));
}
