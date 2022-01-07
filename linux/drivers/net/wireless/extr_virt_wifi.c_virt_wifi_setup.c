
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_destructor; int * netdev_ops; } ;


 int ether_setup (struct net_device*) ;
 int virt_wifi_net_device_destructor ;
 int virt_wifi_ops ;

__attribute__((used)) static void virt_wifi_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->netdev_ops = &virt_wifi_ops;
 dev->priv_destructor = virt_wifi_net_device_destructor;
}
