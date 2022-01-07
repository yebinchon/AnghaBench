
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpqdev {int bpq_list; int ethdev; } ;


 int dev_put (int ) ;
 int list_del_rcu (int *) ;
 struct bpqdev* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static void bpq_free_device(struct net_device *ndev)
{
 struct bpqdev *bpq = netdev_priv(ndev);

 dev_put(bpq->ethdev);
 list_del_rcu(&bpq->bpq_list);

 unregister_netdevice(ndev);
}
