
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipheth_device {int carrier_work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct ipheth_device* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ipheth_close(struct net_device *net)
{
 struct ipheth_device *dev = netdev_priv(net);

 cancel_delayed_work_sync(&dev->carrier_work);
 netif_stop_queue(net);
 return 0;
}
