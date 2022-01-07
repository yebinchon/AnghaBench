
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int link_ksettings; int group; int owner; } ;
struct net_device {int needs_free_netdev; int tx_queue_len; int priv_destructor; int * ethtool_ops; } ;


 int INVALID_GID ;
 int INVALID_UID ;
 int TUN_READQ_SIZE ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int tun_default_link_ksettings (struct net_device*,int *) ;
 int tun_ethtool_ops ;
 int tun_free_netdev ;

__attribute__((used)) static void tun_setup(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 tun->owner = INVALID_UID;
 tun->group = INVALID_GID;
 tun_default_link_ksettings(dev, &tun->link_ksettings);

 dev->ethtool_ops = &tun_ethtool_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = tun_free_netdev;

 dev->tx_queue_len = TUN_READQ_SIZE;
}
