
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rc_dev {int keypressed; int last_protocol; scalar_t__ last_scancode; scalar_t__ last_toggle; scalar_t__ allowed_protocols; TYPE_1__* input_dev; int timer_repeat; int device_name; int dev; scalar_t__ last_keycode; } ;
struct lirc_scancode {scalar_t__ scancode; int rc_proto; scalar_t__ keycode; int flags; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_4__ {scalar_t__* rep; } ;


 int EV_KEY ;
 int EV_MSC ;
 scalar_t__ KEY_RESERVED ;
 int LED_FULL ;
 int LIRC_SCANCODE_FLAG_TOGGLE ;
 scalar_t__ MSC_SCAN ;
 scalar_t__ RC_PROTO_BIT_CEC ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int dev_dbg (int *,char*,int ,scalar_t__,int,scalar_t__) ;
 int input_event (TYPE_1__*,int ,scalar_t__,int) ;
 int input_report_key (TYPE_1__*,scalar_t__,int) ;
 int input_sync (TYPE_1__*) ;
 int ir_do_keyup (struct rc_dev*,int) ;
 int ir_lirc_scancode_event (struct rc_dev*,struct lirc_scancode*) ;
 scalar_t__ jiffies ;
 int led_feedback ;
 int led_trigger_event (int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void ir_do_keydown(struct rc_dev *dev, enum rc_proto protocol,
     u32 scancode, u32 keycode, u8 toggle)
{
 bool new_event = (!dev->keypressed ||
     dev->last_protocol != protocol ||
     dev->last_scancode != scancode ||
     dev->last_toggle != toggle);
 struct lirc_scancode sc = {
  .scancode = scancode, .rc_proto = protocol,
  .flags = toggle ? LIRC_SCANCODE_FLAG_TOGGLE : 0,
  .keycode = keycode
 };

 if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
  ir_lirc_scancode_event(dev, &sc);

 if (new_event && dev->keypressed)
  ir_do_keyup(dev, 0);

 input_event(dev->input_dev, EV_MSC, MSC_SCAN, scancode);

 dev->last_protocol = protocol;
 dev->last_scancode = scancode;
 dev->last_toggle = toggle;
 dev->last_keycode = keycode;

 if (new_event && keycode != KEY_RESERVED) {

  dev->keypressed = 1;

  dev_dbg(&dev->dev, "%s: key down event, key 0x%04x, protocol 0x%04x, scancode 0x%08x\n",
   dev->device_name, keycode, protocol, scancode);
  input_report_key(dev->input_dev, keycode, 1);

  led_trigger_event(led_feedback, LED_FULL);
 }







 if (!new_event && keycode != KEY_RESERVED &&
     dev->allowed_protocols == RC_PROTO_BIT_CEC &&
     !timer_pending(&dev->timer_repeat) &&
     dev->input_dev->rep[REP_PERIOD] &&
     !dev->input_dev->rep[REP_DELAY]) {
  input_event(dev->input_dev, EV_KEY, keycode, 2);
  mod_timer(&dev->timer_repeat, jiffies +
     msecs_to_jiffies(dev->input_dev->rep[REP_PERIOD]));
 }

 input_sync(dev->input_dev);
}
