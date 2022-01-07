
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int tx_timeout_task; int state; } ;
struct net_device {int dev; } ;


 int __NX_RESETTING ;
 int dev_err (int *,char*) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void netxen_tx_timeout(struct net_device *netdev)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);

 if (test_bit(__NX_RESETTING, &adapter->state))
  return;

 dev_err(&netdev->dev, "transmit timeout, resetting.\n");
 schedule_work(&adapter->tx_timeout_task);
}
