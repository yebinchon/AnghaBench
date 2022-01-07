
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ remote_dev; } ;
struct vxlan_dev {TYPE_1__ default_dst; int next; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int list_del (int *) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int netdev_upper_dev_unlink (scalar_t__,struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;
 int vxlan_flush (struct vxlan_dev*,int) ;

__attribute__((used)) static void vxlan_dellink(struct net_device *dev, struct list_head *head)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);

 vxlan_flush(vxlan, 1);

 list_del(&vxlan->next);
 unregister_netdevice_queue(dev, head);
 if (vxlan->default_dst.remote_dev)
  netdev_upper_dev_unlink(vxlan->default_dst.remote_dev, dev);
}
