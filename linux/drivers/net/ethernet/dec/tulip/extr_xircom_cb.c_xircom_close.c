
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xircom_private {TYPE_1__* pdev; scalar_t__ open; int lock; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int deactivate_receiver (struct xircom_private*) ;
 int deactivate_transmitter (struct xircom_private*) ;
 int disable_all_interrupts (struct xircom_private*) ;
 int free_irq (int ,struct net_device*) ;
 struct xircom_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int remove_descriptors (struct xircom_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int xircom_close(struct net_device *dev)
{
 struct xircom_private *card;
 unsigned long flags;

 card = netdev_priv(dev);
 netif_stop_queue(dev);


 spin_lock_irqsave(&card->lock,flags);

 disable_all_interrupts(card);





 remove_descriptors(card);

 spin_unlock_irqrestore(&card->lock,flags);

 card->open = 0;
 free_irq(card->pdev->irq, dev);

 return 0;

}
