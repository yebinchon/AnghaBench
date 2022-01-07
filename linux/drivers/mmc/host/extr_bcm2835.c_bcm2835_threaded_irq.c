
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_host {int irq_block; int irq_busy; int irq_data; int mutex; int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bcm2835_block_irq (struct bcm2835_host*) ;
 int bcm2835_busy_irq (struct bcm2835_host*) ;
 int bcm2835_data_threaded_irq (struct bcm2835_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t bcm2835_threaded_irq(int irq, void *dev_id)
{
 struct bcm2835_host *host = dev_id;
 unsigned long flags;
 bool block, busy, data;

 spin_lock_irqsave(&host->lock, flags);

 block = host->irq_block;
 busy = host->irq_busy;
 data = host->irq_data;
 host->irq_block = 0;
 host->irq_busy = 0;
 host->irq_data = 0;

 spin_unlock_irqrestore(&host->lock, flags);

 mutex_lock(&host->mutex);

 if (block)
  bcm2835_block_irq(host);
 if (busy)
  bcm2835_busy_irq(host);
 if (data)
  bcm2835_data_threaded_irq(host);

 mutex_unlock(&host->mutex);

 return IRQ_HANDLED;
}
