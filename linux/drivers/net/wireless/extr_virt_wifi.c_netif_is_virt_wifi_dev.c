
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 scalar_t__ rcu_access_pointer (int ) ;
 scalar_t__ virt_wifi_rx_handler ;

__attribute__((used)) static bool netif_is_virt_wifi_dev(const struct net_device *dev)
{
 return rcu_access_pointer(dev->rx_handler) == virt_wifi_rx_handler;
}
