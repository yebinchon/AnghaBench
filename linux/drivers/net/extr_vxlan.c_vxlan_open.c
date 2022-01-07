
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ age_interval; } ;
struct TYPE_3__ {int remote_ip; } ;
struct vxlan_dev {int age_timer; TYPE_2__ cfg; TYPE_1__ default_dst; } ;
struct net_device {int dummy; } ;


 int EADDRINUSE ;
 scalar_t__ FDB_AGE_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 scalar_t__ vxlan_addr_multicast (int *) ;
 int vxlan_igmp_join (struct vxlan_dev*) ;
 int vxlan_sock_add (struct vxlan_dev*) ;
 int vxlan_sock_release (struct vxlan_dev*) ;

__attribute__((used)) static int vxlan_open(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 int ret;

 ret = vxlan_sock_add(vxlan);
 if (ret < 0)
  return ret;

 if (vxlan_addr_multicast(&vxlan->default_dst.remote_ip)) {
  ret = vxlan_igmp_join(vxlan);
  if (ret == -EADDRINUSE)
   ret = 0;
  if (ret) {
   vxlan_sock_release(vxlan);
   return ret;
  }
 }

 if (vxlan->cfg.age_interval)
  mod_timer(&vxlan->age_timer, jiffies + FDB_AGE_INTERVAL);

 return ret;
}
