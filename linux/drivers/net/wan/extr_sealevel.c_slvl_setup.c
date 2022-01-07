
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slvl_device {TYPE_1__* chan; } ;
struct net_device {int base_addr; int irq; int * netdev_ops; } ;
struct TYPE_4__ {int xmit; int attach; } ;
struct TYPE_3__ {struct net_device* netdevice; } ;


 struct net_device* alloc_hdlcdev (struct slvl_device*) ;
 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int pr_err (char*) ;
 scalar_t__ register_hdlc_device (struct net_device*) ;
 int sealevel_attach ;
 int sealevel_ops ;
 int sealevel_queue_xmit ;

__attribute__((used)) static int slvl_setup(struct slvl_device *sv, int iobase, int irq)
{
 struct net_device *dev = alloc_hdlcdev(sv);
 if (!dev)
  return -1;

 dev_to_hdlc(dev)->attach = sealevel_attach;
 dev_to_hdlc(dev)->xmit = sealevel_queue_xmit;
 dev->netdev_ops = &sealevel_ops;
 dev->base_addr = iobase;
 dev->irq = irq;

 if (register_hdlc_device(dev)) {
  pr_err("unable to register HDLC device\n");
  free_netdev(dev);
  return -1;
 }

 sv->chan->netdevice = dev;
 return 0;
}
