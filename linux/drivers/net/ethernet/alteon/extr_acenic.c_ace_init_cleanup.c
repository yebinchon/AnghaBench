
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ irq; } ;
struct ace_private {int regs; int trace_buf; int skb; int info_dma; scalar_t__ info; int pdev; } ;
struct ace_info {int dummy; } ;


 int ace_free_descriptors (struct net_device*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct ace_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void ace_init_cleanup(struct net_device *dev)
{
 struct ace_private *ap;

 ap = netdev_priv(dev);

 ace_free_descriptors(dev);

 if (ap->info)
  pci_free_consistent(ap->pdev, sizeof(struct ace_info),
        ap->info, ap->info_dma);
 kfree(ap->skb);
 kfree(ap->trace_buf);

 if (dev->irq)
  free_irq(dev->irq, dev);

 iounmap(ap->regs);
}
