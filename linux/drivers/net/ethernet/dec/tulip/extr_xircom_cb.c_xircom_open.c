
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xircom_private {int open; TYPE_1__* pdev; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int netdev_info (struct net_device*,char*,int const) ;
 struct xircom_private* netdev_priv (struct net_device*) ;
 int request_irq (int const,int ,int ,int ,struct net_device*) ;
 int xircom_interrupt ;
 int xircom_up (struct xircom_private*) ;

__attribute__((used)) static int xircom_open(struct net_device *dev)
{
 struct xircom_private *xp = netdev_priv(dev);
 const int irq = xp->pdev->irq;
 int retval;

 netdev_info(dev, "xircom cardbus adaptor found, using irq %i\n", irq);
 retval = request_irq(irq, xircom_interrupt, IRQF_SHARED, dev->name, dev);
 if (retval)
  return retval;

 xircom_up(xp);
 xp->open = 1;

 return 0;
}
