
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ up; } ;
struct ns83820 {int IMR_cache; int misc_lock; TYPE_1__* pci_dev; TYPE_2__ rx_info; int tx_watchdog; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int CR_RST ;
 int ISR_TXDESC ;
 int ISR_TXERR ;
 int ISR_TXIDLE ;
 int ISR_TXOK ;
 int ISR_TXURN ;
 struct ns83820* PRIV (struct net_device*) ;
 int del_timer_sync (int *) ;
 int ns83820_cleanup_rx (struct ns83820*) ;
 int ns83820_cleanup_tx (struct ns83820*) ;
 int ns83820_disable_interrupts (struct ns83820*) ;
 int ns83820_do_reset (struct ns83820*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int ns83820_stop(struct net_device *ndev)
{
 struct ns83820 *dev = PRIV(ndev);


 del_timer_sync(&dev->tx_watchdog);

 ns83820_disable_interrupts(dev);

 dev->rx_info.up = 0;
 synchronize_irq(dev->pci_dev->irq);

 ns83820_do_reset(dev, CR_RST);

 synchronize_irq(dev->pci_dev->irq);

 spin_lock_irq(&dev->misc_lock);
 dev->IMR_cache &= ~(ISR_TXURN | ISR_TXIDLE | ISR_TXERR | ISR_TXDESC | ISR_TXOK);
 spin_unlock_irq(&dev->misc_lock);

 ns83820_cleanup_rx(dev);
 ns83820_cleanup_tx(dev);

 return 0;
}
