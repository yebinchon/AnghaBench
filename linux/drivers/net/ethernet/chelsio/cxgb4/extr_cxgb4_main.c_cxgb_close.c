
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int pf; } ;


 int cxgb4_dcb_reset (struct net_device*) ;
 int dcb_tx_queue_prio_enable (struct net_device*,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int t4_enable_pi_params (struct adapter*,int ,struct port_info*,int,int,int) ;

__attribute__((used)) static int cxgb_close(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int ret;

 netif_tx_stop_all_queues(dev);
 netif_carrier_off(dev);
 ret = t4_enable_pi_params(adapter, adapter->pf, pi,
      0, 0, 0);




 return ret;
}
