
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {int dev; TYPE_1__* raw; } ;
struct ir_raw_event {scalar_t__ duration; int pulse; scalar_t__ reset; } ;
struct imon_dec {int state; int bits; int last_chk; int count; } ;
struct TYPE_2__ {struct imon_dec imon; } ;


 int BIT (int ) ;
 int EINVAL ;
 int IMON_BITS ;
 int IMON_CHKBITS ;
 int IMON_UNIT ;
 scalar_t__ MS_TO_NS (int) ;


 int STATE_ERROR ;


 int TO_STR (int) ;
 int TO_US (scalar_t__) ;
 int decrease_duration (struct ir_raw_event*,int) ;
 int dev_dbg (int *,char*,int,int ,int ,int ) ;
 int geq_margin (scalar_t__,int,int) ;
 int ir_imon_decode_scancode (struct rc_dev*) ;
 int is_timing_event (struct ir_raw_event) ;

__attribute__((used)) static int ir_imon_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct imon_dec *data = &dev->raw->imon;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 128;
  return 0;
 }

 dev_dbg(&dev->dev,
  "iMON decode started at state %d bitno %d (%uus %s)\n",
  data->state, data->count, TO_US(ev.duration),
  TO_STR(ev.pulse));
 if (data->state == STATE_ERROR) {
  if (!ev.pulse && ev.duration > MS_TO_NS(10))
   data->state = 128;
  return 0;
 }

 for (;;) {
  if (!geq_margin(ev.duration, IMON_UNIT, IMON_UNIT / 2))
   return 0;

  decrease_duration(&ev, IMON_UNIT);

  switch (data->state) {
  case 128:
   if (ev.pulse) {
    data->state = 131;
    data->bits = 0;
    data->count = IMON_BITS;
   }
   break;
  case 131:
   if (IMON_CHKBITS & BIT(data->count))
    data->last_chk = ev.pulse;
   else if (ev.pulse)
    goto err_out;
   data->state = 130;
   break;
  case 130:
   data->bits <<= 1;
   if (!ev.pulse)
    data->bits |= 1;

   if (IMON_CHKBITS & BIT(data->count)) {
    if (data->last_chk != !(data->bits & 3))
     goto err_out;
   }

   if (!data->count--)
    data->state = 129;
   else
    data->state = 131;
   break;
  case 129:
   if (ev.pulse)
    goto err_out;
   ir_imon_decode_scancode(dev);
   data->state = 128;
   break;
  }
 }

err_out:
 dev_dbg(&dev->dev,
  "iMON decode failed at state %d bitno %d (%uus %s)\n",
  data->state, data->count, TO_US(ev.duration),
  TO_STR(ev.pulse));

 data->state = STATE_ERROR;

 return -EINVAL;
}
