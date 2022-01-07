
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd; scalar_t__ num_args; int* args; } ;
struct qede_dev {int cdev; TYPE_3__* ops; TYPE_1__ dump_info; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* set_grc_config ) (int ,int,int) ;} ;


 int DP_ERR (struct qede_dev*,char*,int) ;
 int EINVAL ;

 int QEDE_DUMP_CMD_MAX ;
 int QEDE_DUMP_CMD_NONE ;

 scalar_t__ QEDE_DUMP_MAX_ARGS ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int qede_set_dump(struct net_device *dev, struct ethtool_dump *val)
{
 struct qede_dev *edev = netdev_priv(dev);
 int rc = 0;

 if (edev->dump_info.cmd == QEDE_DUMP_CMD_NONE) {
  if (val->flag > QEDE_DUMP_CMD_MAX) {
   DP_ERR(edev, "Invalid command %d\n", val->flag);
   return -EINVAL;
  }
  edev->dump_info.cmd = val->flag;
  edev->dump_info.num_args = 0;
  return 0;
 }

 if (edev->dump_info.num_args == QEDE_DUMP_MAX_ARGS) {
  DP_ERR(edev, "Arg count = %d\n", edev->dump_info.num_args);
  return -EINVAL;
 }

 switch (edev->dump_info.cmd) {
 case 128:
  edev->dump_info.args[edev->dump_info.num_args] = val->flag;
  edev->dump_info.num_args++;
  break;
 case 129:
  rc = edev->ops->common->set_grc_config(edev->cdev,
             val->flag, 1);
  break;
 default:
  break;
 }

 return rc;
}
