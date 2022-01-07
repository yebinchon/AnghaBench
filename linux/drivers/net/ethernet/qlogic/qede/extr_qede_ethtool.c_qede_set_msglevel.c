
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qede_dev {int cdev; TYPE_1__* ops; int dp_module; int dp_level; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int (* update_msglvl ) (int ,int ,int ) ;} ;
struct TYPE_3__ {TYPE_2__* common; } ;


 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_config_debug (int ,int *,int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void qede_set_msglevel(struct net_device *ndev, u32 level)
{
 struct qede_dev *edev = netdev_priv(ndev);
 u32 dp_module = 0;
 u8 dp_level = 0;

 qede_config_debug(level, &dp_module, &dp_level);

 edev->dp_level = dp_level;
 edev->dp_module = dp_module;
 edev->ops->common->update_msglvl(edev->cdev,
      dp_module, dp_level);
}
