
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_adapter {int tx_timeout_count; } ;


 int iavf_schedule_reset (struct iavf_adapter*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void iavf_tx_timeout(struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 adapter->tx_timeout_count++;
 iavf_schedule_reset(adapter);
}
