
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; scalar_t__ version; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* dbg_all_data ) (int ,void*) ;} ;


 int memset (void*,int ,int ) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,void*) ;

__attribute__((used)) static void qede_get_regs(struct net_device *ndev,
     struct ethtool_regs *regs, void *buffer)
{
 struct qede_dev *edev = netdev_priv(ndev);

 regs->version = 0;
 memset(buffer, 0, regs->len);

 if (edev->ops && edev->ops->common)
  edev->ops->common->dbg_all_data(edev->cdev, buffer);
}
