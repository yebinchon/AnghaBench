
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int min_mtu; int tx_queue_len; int flags; int broadcast; int addr_len; int max_mtu; int mtu; int hard_header_len; int type; int * wireless_handlers; int * header_ops; int * netdev_ops; } ;


 int AIRO_DEF_MTU ;
 int ARPHRD_IEEE80211 ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int MIC_MSGLEN_MAX ;
 int airo11_netdev_ops ;
 int airo_handler_def ;
 int airo_header_ops ;
 int eth_broadcast_addr (int ) ;

__attribute__((used)) static void wifi_setup(struct net_device *dev)
{
 dev->netdev_ops = &airo11_netdev_ops;
 dev->header_ops = &airo_header_ops;
 dev->wireless_handlers = &airo_handler_def;

 dev->type = ARPHRD_IEEE80211;
 dev->hard_header_len = ETH_HLEN;
 dev->mtu = AIRO_DEF_MTU;
 dev->min_mtu = 68;
 dev->max_mtu = MIC_MSGLEN_MAX;
 dev->addr_len = ETH_ALEN;
 dev->tx_queue_len = 100;

 eth_broadcast_addr(dev->broadcast);

 dev->flags = IFF_BROADCAST|IFF_MULTICAST;
}
