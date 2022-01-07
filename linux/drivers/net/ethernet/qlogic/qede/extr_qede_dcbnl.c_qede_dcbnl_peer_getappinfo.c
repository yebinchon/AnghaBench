
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct dcb_peer_app_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dcb; } ;
struct TYPE_3__ {int (* peer_getappinfo ) (int ,struct dcb_peer_app_info*,int *) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct dcb_peer_app_info*,int *) ;

__attribute__((used)) static int qede_dcbnl_peer_getappinfo(struct net_device *netdev,
          struct dcb_peer_app_info *info,
          u16 *count)
{
 struct qede_dev *edev = netdev_priv(netdev);

 return edev->ops->dcb->peer_getappinfo(edev->cdev, info, count);
}
