
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {int dev; int input_dev; int timeout; TYPE_1__* raw; } ;
struct mce_kbd_dec {int state; int count; int header; int wanted_bits; int body; int keylock; int rx_timeout; } ;
struct lirc_scancode {int scancode; int rc_proto; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
struct TYPE_2__ {struct mce_kbd_dec mce_kbd; } ;


 int EINVAL ;
 int EV_MSC ;
 int MCIR2_BIT_END ;
 int MCIR2_HEADER_NBITS ;

 int MCIR2_MAX_LEN ;



 int MCIR2_PREFIX_PULSE ;
 int MCIR2_UNIT ;
 int MSC_SCAN ;
 int RC_PROTO_MCIR2_KBD ;
 int RC_PROTO_MCIR2_MSE ;






 int TO_STR (int ) ;
 int TO_US (int ) ;
 int decrease_duration (struct ir_raw_event*,int ) ;
 int del_timer (int *) ;
 int dev_dbg (int *,char*,...) ;
 int eq_margin (int ,int ,int) ;
 scalar_t__ geq_margin (int ,int,int) ;
 int input_event (int ,int ,int ,int) ;
 int input_sync (int ) ;
 int ir_lirc_scancode_event (struct rc_dev*,struct lirc_scancode*) ;
 int ir_mce_kbd_process_keyboard_data (struct rc_dev*,int) ;
 int ir_mce_kbd_process_mouse_data (struct rc_dev*,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int jiffies ;
 int mce_kbd_mode (struct mce_kbd_dec*) ;
 int mod_timer (int *,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 unsigned long nsecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ir_mce_kbd_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct mce_kbd_dec *data = &dev->raw->mce_kbd;
 u32 scancode;
 unsigned long delay;
 struct lirc_scancode lsc = {};

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 128;
  return 0;
 }

 if (!geq_margin(ev.duration, MCIR2_UNIT, MCIR2_UNIT / 2))
  goto out;

again:
 dev_dbg(&dev->dev, "started at state %i (%uus %s)\n",
  data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 if (!geq_margin(ev.duration, MCIR2_UNIT, MCIR2_UNIT / 2))
  return 0;

 switch (data->state) {

 case 128:
  if (!ev.pulse)
   break;




  if (!eq_margin(ev.duration, MCIR2_PREFIX_PULSE, MCIR2_UNIT))
   break;

  data->state = 129;
  data->count = 0;
  data->header = 0;
  return 0;

 case 129:
  if (geq_margin(ev.duration, MCIR2_MAX_LEN, MCIR2_UNIT / 2))
   break;

  data->header <<= 1;
  if (ev.pulse)
   data->header |= 1;
  data->count++;
  data->state = 130;
  return 0;

 case 130:
  decrease_duration(&ev, MCIR2_BIT_END);

  if (data->count != MCIR2_HEADER_NBITS) {
   data->state = 129;
   goto again;
  }

  switch (mce_kbd_mode(data)) {
  case 136:
   data->wanted_bits = 137;
   break;
  case 135:
   data->wanted_bits = 134;
   break;
  default:
   dev_dbg(&dev->dev, "not keyboard or mouse data\n");
   goto out;
  }

  data->count = 0;
  data->body = 0;
  data->state = 132;
  goto again;

 case 132:
  if (geq_margin(ev.duration, MCIR2_MAX_LEN, MCIR2_UNIT / 2))
   break;

  data->body <<= 1;
  if (ev.pulse)
   data->body |= 1;
  data->count++;
  data->state = 133;
  return 0;

 case 133:
  if (data->count == data->wanted_bits)
   data->state = 131;
  else
   data->state = 132;

  decrease_duration(&ev, MCIR2_BIT_END);
  goto again;

 case 131:
  if (ev.pulse)
   break;

  switch (data->wanted_bits) {
  case 137:
   scancode = data->body & 0xffffff;
   dev_dbg(&dev->dev, "keyboard data 0x%08x\n",
    data->body);
   spin_lock(&data->keylock);
   if (scancode) {
    delay = nsecs_to_jiffies(dev->timeout) +
     msecs_to_jiffies(100);
    mod_timer(&data->rx_timeout, jiffies + delay);
   } else {
    del_timer(&data->rx_timeout);
   }

   ir_mce_kbd_process_keyboard_data(dev, scancode);
   spin_unlock(&data->keylock);
   lsc.rc_proto = RC_PROTO_MCIR2_KBD;
   break;
  case 134:
   scancode = data->body & 0x1fffff;
   dev_dbg(&dev->dev, "mouse data 0x%06x\n", scancode);

   ir_mce_kbd_process_mouse_data(dev, scancode);
   lsc.rc_proto = RC_PROTO_MCIR2_MSE;
   break;
  default:
   dev_dbg(&dev->dev, "not keyboard or mouse data\n");
   goto out;
  }

  lsc.scancode = scancode;
  ir_lirc_scancode_event(dev, &lsc);
  data->state = 128;
  input_event(dev->input_dev, EV_MSC, MSC_SCAN, scancode);
  input_sync(dev->input_dev);
  return 0;
 }

out:
 dev_dbg(&dev->dev, "failed at state %i (%uus %s)\n",
  data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 128;
 return -EINVAL;
}
