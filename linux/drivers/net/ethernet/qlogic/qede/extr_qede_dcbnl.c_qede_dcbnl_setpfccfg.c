
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb; } ;
struct TYPE_3__ {int (* setpfccfg ) (int ,int,int ) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int,int ) ;

__attribute__((used)) static void qede_dcbnl_setpfccfg(struct net_device *netdev, int prio,
     u8 setting)
{
 struct qede_dev *edev = netdev_priv(netdev);

 edev->ops->dcb->setpfccfg(edev->cdev, prio, setting);
}
