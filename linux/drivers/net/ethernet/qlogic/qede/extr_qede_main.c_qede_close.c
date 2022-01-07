
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* update_drv_state ) (int ,int) ;} ;


 int QEDE_UNLOAD_NORMAL ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_unload (struct qede_dev*,int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int qede_close(struct net_device *ndev)
{
 struct qede_dev *edev = netdev_priv(ndev);

 qede_unload(edev, QEDE_UNLOAD_NORMAL, 0);

 edev->ops->common->update_drv_state(edev->cdev, 0);

 return 0;
}
