
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_dev {struct net* net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct vxlan_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static struct net *vxlan_get_link_net(const struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);

 return vxlan->net;
}
