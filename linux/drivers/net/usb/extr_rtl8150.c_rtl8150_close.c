
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ rtl8150_t ;


 int RTL8150_UNPLUG ;
 int disable_net_traffic (TYPE_1__*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int test_bit (int ,int *) ;
 int unlink_all_urbs (TYPE_1__*) ;

__attribute__((used)) static int rtl8150_close(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);

 netif_stop_queue(netdev);
 if (!test_bit(RTL8150_UNPLUG, &dev->flags))
  disable_net_traffic(dev);
 unlink_all_urbs(dev);

 return 0;
}
