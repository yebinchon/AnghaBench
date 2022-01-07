
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sharp_dec {int state; int count; int bits; scalar_t__ pulse_len; } ;
struct rc_dev {int dev; TYPE_1__* raw; } ;
struct ir_raw_event {int pulse; scalar_t__ duration; scalar_t__ reset; } ;
struct TYPE_2__ {struct sharp_dec sharp; } ;


 int EINVAL ;
 int RC_PROTO_SHARP ;
 int SHARP_BIT_0_PERIOD ;
 int SHARP_BIT_1_PERIOD ;
 int SHARP_BIT_PULSE ;
 int SHARP_ECHO_SPACE ;
 int SHARP_NBITS ;
 int SHARP_TRAILER_SPACE ;






 int TO_STR (int ) ;
 int TO_US (scalar_t__) ;
 int bitrev8 (int) ;
 int dev_dbg (int *,char*,int,...) ;
 int eq_margin (scalar_t__,int,int) ;
 int geq_margin (scalar_t__,int ,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int rc_keydown (struct rc_dev*,int ,int,int ) ;

__attribute__((used)) static int ir_sharp_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct sharp_dec *data = &dev->raw->sharp;
 u32 msg, echo, address, command, scancode;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 130;
  return 0;
 }

 dev_dbg(&dev->dev, "Sharp decode started at state %d (%uus %s)\n",
  data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 switch (data->state) {

 case 130:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, SHARP_BIT_PULSE,
          SHARP_BIT_PULSE / 2))
   break;

  data->count = 0;
  data->pulse_len = ev.duration;
  data->state = 132;
  return 0;

 case 133:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, SHARP_BIT_PULSE,
          SHARP_BIT_PULSE / 2))
   break;

  data->pulse_len = ev.duration;
  data->state = 132;
  return 0;

 case 132:
  if (ev.pulse)
   break;

  data->bits <<= 1;
  if (eq_margin(data->pulse_len + ev.duration, SHARP_BIT_1_PERIOD,
         SHARP_BIT_PULSE * 2))
   data->bits |= 1;
  else if (!eq_margin(data->pulse_len + ev.duration,
        SHARP_BIT_0_PERIOD, SHARP_BIT_PULSE * 2))
   break;
  data->count++;

  if (data->count == SHARP_NBITS ||
      data->count == SHARP_NBITS * 2)
   data->state = 129;
  else
   data->state = 133;

  return 0;

 case 129:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, SHARP_BIT_PULSE,
          SHARP_BIT_PULSE / 2))
   break;

  if (data->count == SHARP_NBITS) {

   if ((data->bits & 0x3) != 0x2 &&

       (data->bits & 0x3) != 0x0)
    break;
   data->state = 131;
  } else {
   data->state = 128;
  }
  return 0;

 case 131:
  if (ev.pulse)
   break;

  if (!eq_margin(ev.duration, SHARP_ECHO_SPACE,
          SHARP_ECHO_SPACE / 4))
   break;

  data->state = 133;

  return 0;

 case 128:
  if (ev.pulse)
   break;

  if (!geq_margin(ev.duration, SHARP_TRAILER_SPACE,
    SHARP_BIT_PULSE / 2))
   break;


  msg = (data->bits >> 15) & 0x7fff;
  echo = data->bits & 0x7fff;
  if ((msg ^ echo) != 0x3ff) {
   dev_dbg(&dev->dev,
    "Sharp checksum error: received 0x%04x, 0x%04x\n",
    msg, echo);
   break;
  }

  address = bitrev8((msg >> 7) & 0xf8);
  command = bitrev8((msg >> 2) & 0xff);

  scancode = address << 8 | command;
  dev_dbg(&dev->dev, "Sharp scancode 0x%04x\n", scancode);

  rc_keydown(dev, RC_PROTO_SHARP, scancode, 0);
  data->state = 130;
  return 0;
 }

 dev_dbg(&dev->dev, "Sharp decode failed at count %d state %d (%uus %s)\n",
  data->count, data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 130;
 return -EINVAL;
}
