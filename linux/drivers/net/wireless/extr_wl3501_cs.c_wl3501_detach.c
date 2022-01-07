
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int wl3501_close (struct net_device*) ;
 int wl3501_release (struct pcmcia_device*) ;

__attribute__((used)) static void wl3501_detach(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;





 while (link->open > 0)
  wl3501_close(dev);

 netif_device_detach(dev);
 wl3501_release(link);

 unregister_netdev(dev);

 if (link->priv)
  free_netdev(link->priv);
}
