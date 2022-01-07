
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int axnet_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*,struct pcmcia_device*) ;
 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void axnet_detach(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;

    dev_dbg(&link->dev, "axnet_detach(0x%p)\n", link);

    unregister_netdev(dev);

    axnet_release(link);

    free_netdev(dev);
}
