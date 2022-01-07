
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock (struct net_device*) ;
 int netif_tx_unlock (struct net_device*) ;
 int sky2_close (struct net_device*) ;

__attribute__((used)) static void sky2_detach(struct net_device *dev)
{
 if (netif_running(dev)) {
  netif_tx_lock(dev);
  netif_device_detach(dev);
  netif_tx_unlock(dev);
  sky2_close(dev);
 }
}
