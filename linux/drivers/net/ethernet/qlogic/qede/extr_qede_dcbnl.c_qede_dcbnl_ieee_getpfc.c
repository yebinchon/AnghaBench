
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ieee_pfc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb; } ;
struct TYPE_3__ {int (* ieee_getpfc ) (int ,struct ieee_pfc*) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct ieee_pfc*) ;

__attribute__((used)) static int qede_dcbnl_ieee_getpfc(struct net_device *netdev,
      struct ieee_pfc *pfc)
{
 struct qede_dev *edev = netdev_priv(netdev);

 return edev->ops->dcb->ieee_getpfc(edev->cdev, pfc);
}
