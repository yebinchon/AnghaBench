
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct e1000_adapter {int itr_setting; int itr; } ;


 int E1000_MAX_ITR_USECS ;
 int E1000_MIN_ITR_USECS ;
 int EINVAL ;
 int e1000e_write_itr (struct e1000_adapter*,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int e1000_set_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *ec)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if ((ec->rx_coalesce_usecs > E1000_MAX_ITR_USECS) ||
     ((ec->rx_coalesce_usecs > 4) &&
      (ec->rx_coalesce_usecs < E1000_MIN_ITR_USECS)) ||
     (ec->rx_coalesce_usecs == 2))
  return -EINVAL;

 if (ec->rx_coalesce_usecs == 4) {
  adapter->itr_setting = 4;
  adapter->itr = adapter->itr_setting;
 } else if (ec->rx_coalesce_usecs <= 3) {
  adapter->itr = 20000;
  adapter->itr_setting = ec->rx_coalesce_usecs;
 } else {
  adapter->itr = (1000000 / ec->rx_coalesce_usecs);
  adapter->itr_setting = adapter->itr & ~3;
 }

 pm_runtime_get_sync(netdev->dev.parent);

 if (adapter->itr_setting != 0)
  e1000e_write_itr(adapter, adapter->itr);
 else
  e1000e_write_itr(adapter, 0);

 pm_runtime_put_sync(netdev->dev.parent);

 return 0;
}
