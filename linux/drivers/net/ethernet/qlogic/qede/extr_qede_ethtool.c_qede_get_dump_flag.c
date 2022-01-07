
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cmd; int * args; } ;
struct qede_dev {TYPE_3__ dump_info; int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; int len; int version; } ;
struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int (* dbg_all_data_size ) (int ) ;int (* read_nvm_cfg_len ) (int ,int ) ;} ;


 int DP_ERR (struct qede_dev*,char*,...) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,int,int ) ;
 int EINVAL ;


 int QEDE_DUMP_VERSION ;
 int QED_MSG_DEBUG ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int qede_get_dump_flag(struct net_device *dev,
         struct ethtool_dump *dump)
{
 struct qede_dev *edev = netdev_priv(dev);

 if (!edev->ops || !edev->ops->common) {
  DP_ERR(edev, "Edev ops not populated\n");
  return -EINVAL;
 }

 dump->version = QEDE_DUMP_VERSION;
 switch (edev->dump_info.cmd) {
 case 128:
  dump->flag = 128;
  dump->len = edev->ops->common->read_nvm_cfg_len(edev->cdev,
      edev->dump_info.args[0]);
  break;
 case 129:
  dump->flag = 129;
  dump->len = edev->ops->common->dbg_all_data_size(edev->cdev);
  break;
 default:
  DP_ERR(edev, "Invalid cmd = %d\n", edev->dump_info.cmd);
  return -EINVAL;
 }

 DP_VERBOSE(edev, QED_MSG_DEBUG,
     "dump->version = 0x%x dump->flag = %d dump->len = %d\n",
     dump->version, dump->flag, dump->len);
 return 0;
}
