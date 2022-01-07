
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rc_dev {int dev; TYPE_1__* raw; } ;
struct rc6_dec {int state; int count; int header; int toggle; int body; int wanted_bits; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_2__ {struct rc6_dec rc6; } ;


 int CHAR_BIT ;
 int EINVAL ;
 int RC6_0_NBITS ;

 int RC6_6A_LCC_MASK ;

 int RC6_6A_MCE_TOGGLE_MASK ;
 int RC6_6A_NBITS ;

 int RC6_BIT_END ;
 int RC6_BIT_START ;
 int RC6_HEADER_NBITS ;


 int RC6_PREFIX_PULSE ;
 int RC6_PREFIX_SPACE ;
 int RC6_STARTBIT_MASK ;
 int RC6_SUFFIX_SPACE ;
 int RC6_TOGGLE_END ;
 int RC6_TOGGLE_START ;
 int RC6_UNIT ;
 int RC_PROTO_RC6_0 ;
 int RC_PROTO_RC6_6A_20 ;
 int RC_PROTO_RC6_6A_24 ;
 int RC_PROTO_RC6_6A_32 ;
 int RC_PROTO_RC6_MCE ;
 int TO_STR (int) ;
 int TO_US (int ) ;
 int decrease_duration (struct ir_raw_event*,int ) ;
 int dev_dbg (int *,char*,...) ;
 int eq_margin (int ,int ,int) ;
 scalar_t__ geq_margin (int ,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int const rc6_mode (struct rc6_dec*) ;
 int rc_keydown (struct rc_dev*,int,int,int) ;

__attribute__((used)) static int ir_rc6_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct rc6_dec *data = &dev->raw->rc6;
 u32 scancode;
 u8 toggle;
 enum rc_proto protocol;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 131;
  return 0;
 }

 if (!geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2))
  goto out;

again:
 dev_dbg(&dev->dev, "RC6 decode started at state %i (%uus %s)\n",
  data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 if (!geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2))
  return 0;

 switch (data->state) {

 case 131:
  if (!ev.pulse)
   break;




  if (!eq_margin(ev.duration, RC6_PREFIX_PULSE, RC6_UNIT))
   break;

  data->state = 130;
  data->count = 0;
  return 0;

 case 130:
  if (ev.pulse)
   break;

  if (!eq_margin(ev.duration, RC6_PREFIX_SPACE, RC6_UNIT / 2))
   break;

  data->state = 132;
  data->header = 0;
  return 0;

 case 132:
  if (!eq_margin(ev.duration, RC6_BIT_START, RC6_UNIT / 2))
   break;

  data->header <<= 1;
  if (ev.pulse)
   data->header |= 1;
  data->count++;
  data->state = 133;
  return 0;

 case 133:
  if (data->count == RC6_HEADER_NBITS)
   data->state = 128;
  else
   data->state = 132;

  decrease_duration(&ev, RC6_BIT_END);
  goto again;

 case 128:
  if (!eq_margin(ev.duration, RC6_TOGGLE_START, RC6_UNIT / 2))
   break;

  data->toggle = ev.pulse;
  data->state = 129;
  return 0;

 case 129:
  if (!(data->header & RC6_STARTBIT_MASK)) {
   dev_dbg(&dev->dev, "RC6 invalid start bit\n");
   break;
  }

  data->state = 135;
  decrease_duration(&ev, RC6_TOGGLE_END);
  data->count = 0;
  data->body = 0;

  switch (rc6_mode(data)) {
  case 138:
   data->wanted_bits = RC6_0_NBITS;
   break;
  case 137:
   data->wanted_bits = RC6_6A_NBITS;
   break;
  default:
   dev_dbg(&dev->dev, "RC6 unknown mode\n");
   goto out;
  }
  goto again;

 case 135:
  if (eq_margin(ev.duration, RC6_BIT_START, RC6_UNIT / 2)) {

   if (data->count++ < CHAR_BIT * sizeof data->body) {
    data->body <<= 1;
    if (ev.pulse)
     data->body |= 1;
   }
   data->state = 136;
   return 0;
  } else if (137 == rc6_mode(data) && !ev.pulse &&
    geq_margin(ev.duration, RC6_SUFFIX_SPACE, RC6_UNIT / 2)) {
   data->state = 134;
   goto again;
  }
  break;

 case 136:
  if (data->count == data->wanted_bits)
   data->state = 134;
  else
   data->state = 135;

  decrease_duration(&ev, RC6_BIT_END);
  goto again;

 case 134:
  if (ev.pulse)
   break;

  switch (rc6_mode(data)) {
  case 138:
   scancode = data->body;
   toggle = data->toggle;
   protocol = RC_PROTO_RC6_0;
   dev_dbg(&dev->dev, "RC6(0) scancode 0x%04x (toggle: %u)\n",
    scancode, toggle);
   break;

  case 137:
   if (data->count > CHAR_BIT * sizeof data->body) {
    dev_dbg(&dev->dev, "RC6 too many (%u) data bits\n",
     data->count);
    goto out;
   }

   scancode = data->body;
   switch (data->count) {
   case 20:
    protocol = RC_PROTO_RC6_6A_20;
    toggle = 0;
    break;
   case 24:
    protocol = RC_PROTO_RC6_6A_24;
    toggle = 0;
    break;
   case 32:
    switch (scancode & RC6_6A_LCC_MASK) {
    case 140:
    case 141:
    case 139:
     protocol = RC_PROTO_RC6_MCE;
     toggle = !!(scancode & RC6_6A_MCE_TOGGLE_MASK);
     scancode &= ~RC6_6A_MCE_TOGGLE_MASK;
     break;
    default:
     protocol = RC_PROTO_RC6_6A_32;
     toggle = 0;
     break;
    }
    break;
   default:
    dev_dbg(&dev->dev, "RC6(6A) unsupported length\n");
    goto out;
   }

   dev_dbg(&dev->dev, "RC6(6A) proto 0x%04x, scancode 0x%08x (toggle: %u)\n",
    protocol, scancode, toggle);
   break;
  default:
   dev_dbg(&dev->dev, "RC6 unknown mode\n");
   goto out;
  }

  rc_keydown(dev, protocol, scancode, toggle);
  data->state = 131;
  return 0;
 }

out:
 dev_dbg(&dev->dev, "RC6 decode failed at state %i (%uus %s)\n",
  data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 131;
 return -EINVAL;
}
