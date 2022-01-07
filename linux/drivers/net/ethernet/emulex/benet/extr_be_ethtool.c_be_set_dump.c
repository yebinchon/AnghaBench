
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int MAX_PRIVILEGES ;
 int check_privilege (struct be_adapter*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int lancer_chip (struct be_adapter*) ;
 int lancer_delete_dump (struct be_adapter*) ;
 int lancer_initiate_dump (struct be_adapter*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_set_dump(struct net_device *netdev, struct ethtool_dump *dump)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct device *dev = &adapter->pdev->dev;
 int status;

 if (!lancer_chip(adapter) ||
     !check_privilege(adapter, MAX_PRIVILEGES))
  return -EOPNOTSUPP;

 switch (dump->flag) {
 case 128:
  status = lancer_initiate_dump(adapter);
  if (!status)
   dev_info(dev, "FW dump initiated successfully\n");
  break;
 case 129:
  status = lancer_delete_dump(adapter);
  if (!status)
   dev_info(dev, "FW dump deleted successfully\n");
 break;
 default:
  dev_err(dev, "Invalid dump level: 0x%x\n", dump->flag);
  return -EINVAL;
 }
 return status;
}
