
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int port_id; int nqsets; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int open_device_map; int tdev; } ;


 int OFFLOAD_PORT_UP ;
 int PORT_MASK ;
 int cxgb3_event_notify (int *,int ,int ) ;
 int cxgb_up (struct adapter*) ;
 scalar_t__ is_offload (struct adapter*) ;
 int link_start (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int offload_open (struct net_device*) ;
 int ofld_disable ;
 int pr_warn (char*) ;
 int schedule_chk_task (struct adapter*) ;
 int set_bit (int ,int*) ;
 int t3_port_intr_enable (struct adapter*,int ) ;

__attribute__((used)) static int cxgb_open(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int other_ports = adapter->open_device_map & PORT_MASK;
 int err;

 if (!adapter->open_device_map && (err = cxgb_up(adapter)) < 0)
  return err;

 set_bit(pi->port_id, &adapter->open_device_map);
 if (is_offload(adapter) && !ofld_disable) {
  err = offload_open(dev);
  if (err)
   pr_warn("Could not initialize offload capabilities\n");
 }

 netif_set_real_num_tx_queues(dev, pi->nqsets);
 err = netif_set_real_num_rx_queues(dev, pi->nqsets);
 if (err)
  return err;
 link_start(dev);
 t3_port_intr_enable(adapter, pi->port_id);
 netif_tx_start_all_queues(dev);
 if (!other_ports)
  schedule_chk_task(adapter);

 cxgb3_event_notify(&adapter->tdev, OFFLOAD_PORT_UP, pi->port_id);
 return 0;
}
