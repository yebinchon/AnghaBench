
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
struct TYPE_3__ {int (* getpgtccfgrx ) (int ,int,int *,int *,int *,int *) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int,int *,int *,int *,int *) ;

__attribute__((used)) static void qede_dcbnl_getpgtccfgrx(struct net_device *netdev, int prio,
        u8 *prio_type, u8 *pgid, u8 *bw_pct,
        u8 *up_map)
{
 struct qede_dev *edev = netdev_priv(netdev);

 edev->ops->dcb->getpgtccfgrx(edev->cdev, prio, prio_type, pgid, bw_pct,
         up_map);
}
