
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct igc_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 struct igc_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void igc_ethtool_complete(struct net_device *netdev)
{
 struct igc_adapter *adapter = netdev_priv(netdev);

 pm_runtime_put(&adapter->pdev->dev);
}
