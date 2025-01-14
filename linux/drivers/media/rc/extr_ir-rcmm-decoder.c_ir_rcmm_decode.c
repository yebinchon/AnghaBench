
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rcmm_dec {int state; int count; int bits; } ;
struct rc_dev {int enabled_protocols; TYPE_1__* raw; } ;
struct ir_raw_event {int duration; int pulse; scalar_t__ reset; } ;
struct TYPE_2__ {struct rcmm_dec rcmm; } ;


 int EINVAL ;
 int RCMM_PREFIX_PULSE ;
 int RCMM_PULSE_0 ;
 int RCMM_PULSE_1 ;
 int RCMM_PULSE_2 ;
 int RCMM_PULSE_3 ;
 int RCMM_UNIT ;
 int RC_PROTO_BIT_RCMM12 ;
 int RC_PROTO_BIT_RCMM24 ;
 int RC_PROTO_BIT_RCMM32 ;
 int RC_PROTO_RCMM32 ;





 int eq_margin (int ,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int rc_keydown (struct rc_dev*,int ,int,int) ;
 int rcmm_miscmode (struct rc_dev*,struct rcmm_dec*) ;
 int rcmm_mode (struct rcmm_dec*) ;

__attribute__((used)) static int ir_rcmm_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct rcmm_dec *data = &dev->raw->rcmm;
 u32 scancode;
 u8 toggle;
 int value;

 if (!(dev->enabled_protocols & (RC_PROTO_BIT_RCMM32 |
       RC_PROTO_BIT_RCMM24 |
       RC_PROTO_BIT_RCMM12)))
  return 0;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 130;
  return 0;
 }

 switch (data->state) {
 case 130:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, RCMM_PREFIX_PULSE, RCMM_UNIT / 2))
   break;

  data->state = 129;
  data->count = 0;
  data->bits = 0;
  return 0;

 case 129:
  if (ev.pulse)
   break;

  if (!eq_margin(ev.duration, RCMM_PULSE_0, RCMM_UNIT / 2))
   break;

  data->state = 132;
  return 0;

 case 132:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, RCMM_UNIT, RCMM_UNIT / 2))
   break;

  data->state = 128;
  return 0;

 case 128:
  if (ev.pulse)
   break;

  if (eq_margin(ev.duration, RCMM_PULSE_0, RCMM_UNIT / 2))
   value = 0;
  else if (eq_margin(ev.duration, RCMM_PULSE_1, RCMM_UNIT / 2))
   value = 1;
  else if (eq_margin(ev.duration, RCMM_PULSE_2, RCMM_UNIT / 2))
   value = 2;
  else if (eq_margin(ev.duration, RCMM_PULSE_3, RCMM_UNIT / 2))
   value = 3;
  else
   value = -1;

  if (value == -1) {
   if (!rcmm_miscmode(dev, data))
    return 0;
   break;
  }

  data->bits <<= 2;
  data->bits |= value;

  data->count += 2;

  if (data->count < 32)
   data->state = 132;
  else
   data->state = 131;

  return 0;

 case 131:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, RCMM_UNIT, RCMM_UNIT / 2))
   break;

  if (rcmm_mode(data)) {
   toggle = !!(0x8000 & data->bits);
   scancode = data->bits & ~0x8000;
  } else {
   toggle = 0;
   scancode = data->bits;
  }

  if (dev->enabled_protocols & RC_PROTO_BIT_RCMM32) {
   rc_keydown(dev, RC_PROTO_RCMM32, scancode, toggle);
   data->state = 130;
   return 0;
  }

  break;
 }

 data->state = 130;
 return -EINVAL;
}
