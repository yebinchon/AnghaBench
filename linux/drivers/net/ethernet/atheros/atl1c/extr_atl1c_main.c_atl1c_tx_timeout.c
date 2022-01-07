
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int common_task; int work_event; } ;


 int ATL1C_WORK_EVENT_RESET ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void atl1c_tx_timeout(struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);


 set_bit(ATL1C_WORK_EVENT_RESET, &adapter->work_event);
 schedule_work(&adapter->common_task);
}
