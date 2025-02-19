
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int tx_queue_len; int * ethtool_ops; scalar_t__ mtu; int type; int watchdog_timeo; int * netdev_ops; } ;
struct hso_net {int net_lock; } ;


 int ARPHRD_NONE ;
 scalar_t__ DEFAULT_MTU ;
 int HSO_NET_TX_TIMEOUT ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int hso_dbg (int,char*,int) ;
 int hso_netdev_ops ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void hso_net_init(struct net_device *net)
{
 struct hso_net *hso_net = netdev_priv(net);

 hso_dbg(0x1, "sizeof hso_net is %zu\n", sizeof(*hso_net));


 net->netdev_ops = &hso_netdev_ops;
 net->watchdog_timeo = HSO_NET_TX_TIMEOUT;
 net->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
 net->type = ARPHRD_NONE;
 net->mtu = DEFAULT_MTU - 14;
 net->tx_queue_len = 10;
 net->ethtool_ops = &ops;


 spin_lock_init(&hso_net->net_lock);
}
