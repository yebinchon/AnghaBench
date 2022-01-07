
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ priv; } ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ num_dev_open; } ;


 int DEBUG_EXTRA ;
 int ENODEV ;
 int PDEBUG (int ,char*,int ) ;
 int dev_info ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int prism2_hw_config (struct net_device*,int) ;
 int prism2_hw_shutdown (struct net_device*,int) ;

__attribute__((used)) static int hostap_cs_resume(struct pcmcia_device *link)
{
 struct net_device *dev = (struct net_device *) link->priv;
 int dev_open = 0;
 struct hostap_interface *iface = ((void*)0);

 if (!dev)
  return -ENODEV;

 iface = netdev_priv(dev);

 PDEBUG(DEBUG_EXTRA, "%s: CS_EVENT_PM_RESUME\n", dev_info);

 if (iface && iface->local)
  dev_open = iface->local->num_dev_open > 0;

 prism2_hw_shutdown(dev, 1);
 prism2_hw_config(dev, dev_open ? 0 : 1);
 if (dev_open) {
  netif_device_attach(dev);
  netif_start_queue(dev);
 }

 return 0;
}
