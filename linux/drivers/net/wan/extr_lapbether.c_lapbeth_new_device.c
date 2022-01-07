
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapbethdev {int node; struct net_device* ethdev; struct net_device* axdev; } ;


 int ASSERT_RTNL () ;
 int EIO ;
 int ENOMEM ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int lapbeth_devices ;
 int lapbeth_setup ;
 int list_add_rcu (int *,int *) ;
 struct lapbethdev* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdevice (struct net_device*) ;

__attribute__((used)) static int lapbeth_new_device(struct net_device *dev)
{
 struct net_device *ndev;
 struct lapbethdev *lapbeth;
 int rc = -ENOMEM;

 ASSERT_RTNL();

 ndev = alloc_netdev(sizeof(*lapbeth), "lapb%d", NET_NAME_UNKNOWN,
       lapbeth_setup);
 if (!ndev)
  goto out;

 lapbeth = netdev_priv(ndev);
 lapbeth->axdev = ndev;

 dev_hold(dev);
 lapbeth->ethdev = dev;

 rc = -EIO;
 if (register_netdevice(ndev))
  goto fail;

 list_add_rcu(&lapbeth->node, &lapbeth_devices);
 rc = 0;
out:
 return rc;
fail:
 dev_put(dev);
 free_netdev(ndev);
 goto out;
}
