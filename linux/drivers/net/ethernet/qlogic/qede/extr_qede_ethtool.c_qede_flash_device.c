
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_flash {int data; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* nvm_flash ) (int ,int ) ;} ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int qede_flash_device(struct net_device *dev,
        struct ethtool_flash *flash)
{
 struct qede_dev *edev = netdev_priv(dev);

 return edev->ops->common->nvm_flash(edev->cdev, flash->data);
}
