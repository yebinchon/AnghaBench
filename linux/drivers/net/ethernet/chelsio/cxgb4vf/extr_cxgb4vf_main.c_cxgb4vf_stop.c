
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {scalar_t__ open_device_map; } ;


 int adapter_down (struct adapter*) ;
 int clear_bit (int ,scalar_t__*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int t4vf_enable_pi (struct adapter*,struct port_info*,int,int) ;

__attribute__((used)) static int cxgb4vf_stop(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 netif_tx_stop_all_queues(dev);
 netif_carrier_off(dev);
 t4vf_enable_pi(adapter, pi, 0, 0);

 clear_bit(pi->port_id, &adapter->open_device_map);
 if (adapter->open_device_map == 0)
  adapter_down(adapter);
 return 0;
}
