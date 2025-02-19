
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hcp_ehea_port_cb1 {scalar_t__* vlan_filter; } ;
struct ehea_port {int logical_port_id; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;
typedef int __be16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_PORT_CB1 ;
 int H_PORT_CB1_ALL ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_modify_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb1*) ;
 scalar_t__ ehea_h_query_ehea_port (int ,int ,int ,int ,struct hcp_ehea_port_cb1*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 struct ehea_port* netdev_priv (struct net_device*) ;
 int pr_err (char*) ;

__attribute__((used)) static int ehea_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct ehea_port *port = netdev_priv(dev);
 struct ehea_adapter *adapter = port->adapter;
 struct hcp_ehea_port_cb1 *cb1;
 int index;
 u64 hret;
 int err = 0;

 cb1 = (void *)get_zeroed_page(GFP_KERNEL);
 if (!cb1) {
  pr_err("no mem for cb1\n");
  err = -ENOMEM;
  goto out;
 }

 hret = ehea_h_query_ehea_port(adapter->handle, port->logical_port_id,
          H_PORT_CB1, H_PORT_CB1_ALL, cb1);
 if (hret != H_SUCCESS) {
  pr_err("query_ehea_port failed\n");
  err = -EINVAL;
  goto out;
 }

 index = (vid / 64);
 cb1->vlan_filter[index] |= ((u64)(0x8000000000000000 >> (vid & 0x3F)));

 hret = ehea_h_modify_ehea_port(adapter->handle, port->logical_port_id,
           H_PORT_CB1, H_PORT_CB1_ALL, cb1);
 if (hret != H_SUCCESS) {
  pr_err("modify_ehea_port failed\n");
  err = -EINVAL;
 }
out:
 free_page((unsigned long)cb1);
 return err;
}
