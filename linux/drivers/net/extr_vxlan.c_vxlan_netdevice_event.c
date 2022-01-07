
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_net {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_REGISTER ;
 unsigned long NETDEV_UDP_TUNNEL_DROP_INFO ;
 unsigned long NETDEV_UDP_TUNNEL_PUSH_INFO ;
 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 struct vxlan_net* net_generic (int ,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int vxlan_handle_lowerdev_unregister (struct vxlan_net*,struct net_device*) ;
 int vxlan_net_id ;
 int vxlan_offload_rx_ports (struct net_device*,int) ;

__attribute__((used)) static int vxlan_netdevice_event(struct notifier_block *unused,
     unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct vxlan_net *vn = net_generic(dev_net(dev), vxlan_net_id);

 if (event == NETDEV_UNREGISTER) {
  vxlan_offload_rx_ports(dev, 0);
  vxlan_handle_lowerdev_unregister(vn, dev);
 } else if (event == NETDEV_REGISTER) {
  vxlan_offload_rx_ports(dev, 1);
 } else if (event == NETDEV_UDP_TUNNEL_PUSH_INFO ||
     event == NETDEV_UDP_TUNNEL_DROP_INFO) {
  vxlan_offload_rx_ports(dev, event == NETDEV_UDP_TUNNEL_PUSH_INFO);
 }

 return NOTIFY_DONE;
}
