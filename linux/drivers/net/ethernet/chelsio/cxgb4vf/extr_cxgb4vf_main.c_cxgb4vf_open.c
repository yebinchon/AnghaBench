
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int port_id; int vlan_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; scalar_t__ open_device_map; } ;


 int CXGB4VF_FW_OK ;
 int ENXIO ;
 int adapter_down (struct adapter*) ;
 int adapter_up (struct adapter*) ;
 int link_start (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int set_bit (int ,scalar_t__*) ;
 int t4vf_get_vf_vlan_acl (struct adapter*) ;
 int t4vf_update_port_info (struct port_info*) ;

__attribute__((used)) static int cxgb4vf_open(struct net_device *dev)
{
 int err;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;





 if (!(adapter->flags & CXGB4VF_FW_OK))
  return -ENXIO;





 if (adapter->open_device_map == 0) {
  err = adapter_up(adapter);
  if (err)
   return err;
 }




 err = t4vf_update_port_info(pi);
 if (err < 0)
  return err;




 err = link_start(dev);
 if (err)
  goto err_unwind;

 pi->vlan_id = t4vf_get_vf_vlan_acl(adapter);

 netif_tx_start_all_queues(dev);
 set_bit(pi->port_id, &adapter->open_device_map);
 return 0;

err_unwind:
 if (adapter->open_device_map == 0)
  adapter_down(adapter);
 return err;
}
