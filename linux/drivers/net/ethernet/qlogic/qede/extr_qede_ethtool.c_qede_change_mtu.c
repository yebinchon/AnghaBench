
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mtu; } ;
struct qede_reload_args {int * func; TYPE_3__ u; } ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int features; } ;
struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int (* update_mtu ) (int ,int) ;} ;


 int DP_VERBOSE (struct qede_dev*,int,char*,int) ;
 int NETIF_F_GRO_HW ;
 int NETIF_MSG_IFDOWN ;
 int NETIF_MSG_IFUP ;
 int PAGE_SIZE ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_reload (struct qede_dev*,struct qede_reload_args*,int) ;
 int qede_update_mtu ;
 int stub1 (int ,int) ;

int qede_change_mtu(struct net_device *ndev, int new_mtu)
{
 struct qede_dev *edev = netdev_priv(ndev);
 struct qede_reload_args args;

 DP_VERBOSE(edev, (NETIF_MSG_IFUP | NETIF_MSG_IFDOWN),
     "Configuring MTU size of %d\n", new_mtu);

 if (new_mtu > PAGE_SIZE)
  ndev->features &= ~NETIF_F_GRO_HW;


 args.u.mtu = new_mtu;
 args.func = &qede_update_mtu;
 qede_reload(edev, &args, 0);

 edev->ops->common->update_mtu(edev->cdev, new_mtu);

 return 0;
}
