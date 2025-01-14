
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct cee_pg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb; } ;
struct TYPE_3__ {int (* cee_peer_getpg ) (int ,struct cee_pg*) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct cee_pg*) ;

__attribute__((used)) static int qede_dcbnl_cee_peer_getpg(struct net_device *netdev,
         struct cee_pg *pg)
{
 struct qede_dev *edev = netdev_priv(netdev);

 return edev->ops->dcb->cee_peer_getpg(edev->cdev, pg);
}
