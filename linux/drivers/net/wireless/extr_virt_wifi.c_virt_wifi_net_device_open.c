
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_wifi_netdev_priv {int is_up; } ;
struct net_device {int dummy; } ;


 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virt_wifi_net_device_open(struct net_device *dev)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(dev);

 priv->is_up = 1;
 return 0;
}
