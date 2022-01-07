
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpqdev {int bpq_list; int acpt_addr; int dest_addr; struct net_device* axdev; struct net_device* ethdev; } ;


 int ENOMEM ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int bpq_devices ;
 int bpq_setup ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int eth_broadcast_addr (int ) ;
 int free_netdev (struct net_device*) ;
 int list_add_rcu (int *,int *) ;
 struct bpqdev* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int bpq_new_device(struct net_device *edev)
{
 int err;
 struct net_device *ndev;
 struct bpqdev *bpq;

 ndev = alloc_netdev(sizeof(struct bpqdev), "bpq%d", NET_NAME_UNKNOWN,
       bpq_setup);
 if (!ndev)
  return -ENOMEM;


 bpq = netdev_priv(ndev);
 dev_hold(edev);
 bpq->ethdev = edev;
 bpq->axdev = ndev;

 eth_broadcast_addr(bpq->dest_addr);
 eth_broadcast_addr(bpq->acpt_addr);

 err = register_netdevice(ndev);
 if (err)
  goto error;


 list_add_rcu(&bpq->bpq_list, &bpq_devices);
 return 0;

 error:
 dev_put(edev);
 free_netdev(ndev);
 return err;

}
