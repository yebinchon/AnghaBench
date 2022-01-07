
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_rc_device {unsigned int sample_mult; unsigned int sample_div; int rdev; scalar_t__ rx_base; scalar_t__ overclocking; int dev; scalar_t__ irq_wake; } ;
struct ir_raw_event {int pulse; void* duration; } ;
typedef int irqreturn_t ;


 int IRB_FIFO_NOT_EMPTY ;
 int IRB_OVERFLOW ;
 int IRB_RX_INTS ;
 scalar_t__ IRB_RX_INT_CLEAR ;
 scalar_t__ IRB_RX_INT_STATUS ;
 scalar_t__ IRB_RX_ON ;
 int IRB_RX_OVERRUN_INT ;
 scalar_t__ IRB_RX_STATUS ;
 scalar_t__ IRB_RX_SYS ;
 unsigned int IRB_TIMEOUT ;
 int IRQ_HANDLED ;
 void* US_TO_NS (unsigned int) ;
 int dev_info (int ,char*) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pm_wakeup_event (int ,int ) ;
 void* readl (scalar_t__) ;
 int st_rc_send_lirc_timeout (int ) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t st_rc_rx_interrupt(int irq, void *data)
{
 unsigned long timeout;
 unsigned int symbol, mark = 0;
 struct st_rc_device *dev = data;
 int last_symbol = 0;
 u32 status, int_status;
 struct ir_raw_event ev = {};

 if (dev->irq_wake)
  pm_wakeup_event(dev->dev, 0);


 timeout = jiffies + msecs_to_jiffies(10);
 do {
  status = readl(dev->rx_base + IRB_RX_STATUS);
  if (!(status & (IRB_FIFO_NOT_EMPTY | IRB_OVERFLOW)))
   break;

  int_status = readl(dev->rx_base + IRB_RX_INT_STATUS);
  if (unlikely(int_status & IRB_RX_OVERRUN_INT)) {

   ir_raw_event_reset(dev->rdev);
   dev_info(dev->dev, "IR RX overrun\n");
   writel(IRB_RX_OVERRUN_INT,
     dev->rx_base + IRB_RX_INT_CLEAR);
   continue;
  }

  symbol = readl(dev->rx_base + IRB_RX_SYS);
  mark = readl(dev->rx_base + IRB_RX_ON);

  if (symbol == IRB_TIMEOUT)
   last_symbol = 1;


  if ((mark > 2) && (symbol > 1)) {
   symbol -= mark;
   if (dev->overclocking) {
    symbol *= dev->sample_mult;
    symbol /= dev->sample_div;
    mark *= dev->sample_mult;
    mark /= dev->sample_div;
   }

   ev.duration = US_TO_NS(mark);
   ev.pulse = 1;
   ir_raw_event_store(dev->rdev, &ev);

   if (!last_symbol) {
    ev.duration = US_TO_NS(symbol);
    ev.pulse = 0;
    ir_raw_event_store(dev->rdev, &ev);
   } else {
    st_rc_send_lirc_timeout(dev->rdev);
   }

  }
  last_symbol = 0;
 } while (time_is_after_jiffies(timeout));

 writel(IRB_RX_INTS, dev->rx_base + IRB_RX_INT_CLEAR);


 ir_raw_event_handle(dev->rdev);
 return IRQ_HANDLED;
}
