
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_net {int dummy; } ;
struct TYPE_2__ {int remote_ip; } ;
struct vxlan_dev {int age_timer; TYPE_1__ default_dst; int net; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct vxlan_net* net_generic (int ,int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 scalar_t__ vxlan_addr_multicast (int *) ;
 int vxlan_flush (struct vxlan_dev*,int) ;
 int vxlan_group_used (struct vxlan_net*,struct vxlan_dev*) ;
 int vxlan_igmp_leave (struct vxlan_dev*) ;
 int vxlan_net_id ;
 int vxlan_sock_release (struct vxlan_dev*) ;

__attribute__((used)) static int vxlan_stop(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 int ret = 0;

 if (vxlan_addr_multicast(&vxlan->default_dst.remote_ip) &&
     !vxlan_group_used(vn, vxlan))
  ret = vxlan_igmp_leave(vxlan);

 del_timer_sync(&vxlan->age_timer);

 vxlan_flush(vxlan, 0);
 vxlan_sock_release(vxlan);

 return ret;
}
