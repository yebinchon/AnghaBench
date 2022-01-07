
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {int expires; } ;
struct TYPE_7__ {int keylock; TYPE_1__ rx_timeout; } ;
struct ir_raw_event_ctrl {TYPE_3__ mce_kbd; TYPE_2__* dev; } ;
struct TYPE_8__ {int rx_timeout; } ;
struct TYPE_6__ {int input_dev; int dev; } ;


 int MCIR2_MASK_KEYS_START ;
 int dev_dbg (int *,char*) ;
 struct ir_raw_event_ctrl* from_timer (int ,struct timer_list*,int ) ;
 int input_report_key (int ,unsigned char,int ) ;
 int input_sync (int ) ;
 unsigned char* kbd_keycodes ;
 TYPE_4__ mce_kbd ;
 struct ir_raw_event_ctrl* raw ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_before_eq_jiffies (int ) ;

__attribute__((used)) static void mce_kbd_rx_timeout(struct timer_list *t)
{
 struct ir_raw_event_ctrl *raw = from_timer(raw, t, mce_kbd.rx_timeout);
 unsigned char maskcode;
 unsigned long flags;
 int i;

 dev_dbg(&raw->dev->dev, "timer callback clearing all keys\n");

 spin_lock_irqsave(&raw->mce_kbd.keylock, flags);

 if (time_is_before_eq_jiffies(raw->mce_kbd.rx_timeout.expires)) {
  for (i = 0; i < 7; i++) {
   maskcode = kbd_keycodes[MCIR2_MASK_KEYS_START + i];
   input_report_key(raw->dev->input_dev, maskcode, 0);
  }

  for (i = 0; i < MCIR2_MASK_KEYS_START; i++)
   input_report_key(raw->dev->input_dev, kbd_keycodes[i],
      0);

  input_sync(raw->dev->input_dev);
 }
 spin_unlock_irqrestore(&raw->mce_kbd.keylock, flags);
}
