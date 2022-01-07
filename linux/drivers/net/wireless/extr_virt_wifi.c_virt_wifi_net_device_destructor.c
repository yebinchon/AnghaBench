
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ieee80211_ptr; } ;


 int free_netdev (struct net_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void virt_wifi_net_device_destructor(struct net_device *dev)
{



 kfree(dev->ieee80211_ptr);
 dev->ieee80211_ptr = ((void*)0);
 free_netdev(dev);
}
