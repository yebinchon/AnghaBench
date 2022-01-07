
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* dbg_all_data_size ) (int ) ;} ;


 int EINVAL ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ) ;

__attribute__((used)) static int qede_get_regs_len(struct net_device *ndev)
{
 struct qede_dev *edev = netdev_priv(ndev);

 if (edev->ops && edev->ops->common)
  return edev->ops->common->dbg_all_data_size(edev->cdev);
 else
  return -EINVAL;
}
