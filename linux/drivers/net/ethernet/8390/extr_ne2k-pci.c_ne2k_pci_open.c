
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct TYPE_2__ {int ne2k_flags; } ;


 int FORCE_FDX ;
 int IRQF_SHARED ;
 int ei_interrupt ;
 int ei_open (struct net_device*) ;
 TYPE_1__ ei_status ;
 int ne2k_pci_set_fdx (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int ne2k_pci_open(struct net_device *dev)
{
 int ret = request_irq(dev->irq, ei_interrupt, IRQF_SHARED, dev->name, dev);
 if (ret)
  return ret;

 if (ei_status.ne2k_flags & FORCE_FDX)
  ne2k_pci_set_fdx(dev);

 ei_open(dev);
 return 0;
}
