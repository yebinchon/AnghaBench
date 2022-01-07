
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int keypressed; int input_dev; int last_keycode; int timer_repeat; int dev; } ;


 int LED_OFF ;
 int del_timer (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int led_feedback ;
 int led_trigger_event (int ,int ) ;

__attribute__((used)) static void ir_do_keyup(struct rc_dev *dev, bool sync)
{
 if (!dev->keypressed)
  return;

 dev_dbg(&dev->dev, "keyup key 0x%04x\n", dev->last_keycode);
 del_timer(&dev->timer_repeat);
 input_report_key(dev->input_dev, dev->last_keycode, 0);
 led_trigger_event(led_feedback, LED_OFF);
 if (sync)
  input_sync(dev->input_dev);
 dev->keypressed = 0;
}
