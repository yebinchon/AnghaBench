
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ene_device* priv; } ;
struct ene_device {unsigned int* tx_buffer; unsigned int tx_len; int tx_sample_pulse; int hw_lock; int tx_complete; scalar_t__ tx_sample; scalar_t__ tx_done; scalar_t__ tx_reg; scalar_t__ tx_pos; } ;


 int HZ ;
 int dbg (char*,...) ;
 int ene_tx_disable (struct ene_device*) ;
 int ene_tx_enable (struct ene_device*) ;
 int ene_tx_sample (struct ene_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ene_transmit(struct rc_dev *rdev, unsigned *buf, unsigned n)
{
 struct ene_device *dev = rdev->priv;
 unsigned long flags;

 dev->tx_buffer = buf;
 dev->tx_len = n;
 dev->tx_pos = 0;
 dev->tx_reg = 0;
 dev->tx_done = 0;
 dev->tx_sample = 0;
 dev->tx_sample_pulse = 0;

 dbg("TX: %d samples", dev->tx_len);

 spin_lock_irqsave(&dev->hw_lock, flags);

 ene_tx_enable(dev);


 ene_tx_sample(dev);
 ene_tx_sample(dev);

 spin_unlock_irqrestore(&dev->hw_lock, flags);

 if (wait_for_completion_timeout(&dev->tx_complete, 2 * HZ) == 0) {
  dbg("TX: timeout");
  spin_lock_irqsave(&dev->hw_lock, flags);
  ene_tx_disable(dev);
  spin_unlock_irqrestore(&dev->hw_lock, flags);
 } else
  dbg("TX: done");
 return n;
}
