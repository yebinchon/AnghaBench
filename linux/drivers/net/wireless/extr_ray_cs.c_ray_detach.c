
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int dev; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int timer; } ;
typedef TYPE_1__ ray_dev_t ;


 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*) ;
 int free_netdev (struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int ray_release (struct pcmcia_device*) ;
 int * this_device ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ray_detach(struct pcmcia_device *link)
{
 struct net_device *dev;
 ray_dev_t *local;

 dev_dbg(&link->dev, "ray_detach\n");

 this_device = ((void*)0);
 dev = link->priv;

 ray_release(link);

 local = netdev_priv(dev);
 del_timer_sync(&local->timer);

 if (link->priv) {
  unregister_netdev(dev);
  free_netdev(dev);
 }
 dev_dbg(&link->dev, "ray_cs ray_detach ending\n");
}
