
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_card {int lock; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wl3501_ack_interrupt (struct wl3501_card*) ;
 int wl3501_block_interrupt (struct wl3501_card*) ;
 int wl3501_rx_interrupt (struct net_device*) ;
 int wl3501_unblock_interrupt (struct wl3501_card*) ;

__attribute__((used)) static irqreturn_t wl3501_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct wl3501_card *this;

 this = netdev_priv(dev);
 spin_lock(&this->lock);
 wl3501_ack_interrupt(this);
 wl3501_block_interrupt(this);
 wl3501_rx_interrupt(dev);
 wl3501_unblock_interrupt(this);
 spin_unlock(&this->lock);

 return IRQ_HANDLED;
}
