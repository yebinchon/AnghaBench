
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ieee_ets {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb; } ;
struct TYPE_3__ {int (* ieee_setets ) (int ,struct ieee_ets*) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct ieee_ets*) ;

__attribute__((used)) static int qede_dcbnl_ieee_setets(struct net_device *netdev,
      struct ieee_ets *ets)
{
 struct qede_dev *edev = netdev_priv(netdev);

 return edev->ops->dcb->ieee_setets(edev->cdev, ets);
}
