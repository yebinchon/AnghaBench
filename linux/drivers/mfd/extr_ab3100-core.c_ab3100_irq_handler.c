
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ab3100 {int startup_events_read; int* startup_events; int dev; int event_subscribers; } ;
typedef int irqreturn_t ;


 int AB3100_EVENTA1 ;
 int IRQ_HANDLED ;
 int ab3100_get_register_page_interruptible (struct ab3100*,int ,int*,int) ;
 int blocking_notifier_call_chain (int *,int,int *) ;
 int dev_dbg (int ,char*,...) ;

__attribute__((used)) static irqreturn_t ab3100_irq_handler(int irq, void *data)
{
 struct ab3100 *ab3100 = data;
 u8 event_regs[3];
 u32 fatevent;
 int err;

 err = ab3100_get_register_page_interruptible(ab3100, AB3100_EVENTA1,
           event_regs, 3);
 if (err)
  goto err_event;

 fatevent = (event_regs[0] << 16) |
  (event_regs[1] << 8) |
  event_regs[2];

 if (!ab3100->startup_events_read) {
  ab3100->startup_events[0] = event_regs[0];
  ab3100->startup_events[1] = event_regs[1];
  ab3100->startup_events[2] = event_regs[2];
  ab3100->startup_events_read = 1;
 }






 blocking_notifier_call_chain(&ab3100->event_subscribers,
         fatevent, ((void*)0));

 dev_dbg(ab3100->dev,
  "IRQ Event: 0x%08x\n", fatevent);

 return IRQ_HANDLED;

 err_event:
 dev_dbg(ab3100->dev,
  "error reading event status\n");
 return IRQ_HANDLED;
}
