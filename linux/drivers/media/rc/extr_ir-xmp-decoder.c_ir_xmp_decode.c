
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xmp_dec {int state; int count; int* durations; } ;
struct rc_dev {int dev; TYPE_1__* raw; } ;
struct ir_raw_event {int duration; int pulse; scalar_t__ reset; } ;
struct TYPE_2__ {struct xmp_dec xmp; } ;


 int EINVAL ;
 int RC_PROTO_XMP ;



 int TO_STR (int ) ;
 int TO_US (int) ;
 int XMP_HALFFRAME_SPACE ;
 int XMP_LEADER ;
 int XMP_NIBBLE_PREFIX ;
 int XMP_TRAILER_SPACE ;
 int XMP_UNIT ;
 int dev_dbg (int *,char*,...) ;
 int eq_margin (int,int ,int) ;
 int geq_margin (int,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int rc_keydown (struct rc_dev*,int ,int,int ) ;
 int rc_repeat (struct rc_dev*) ;

__attribute__((used)) static int ir_xmp_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct xmp_dec *data = &dev->raw->xmp;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 130;
  return 0;
 }

 dev_dbg(&dev->dev, "XMP decode started at state %d %d (%uus %s)\n",
  data->state, data->count, TO_US(ev.duration), TO_STR(ev.pulse));

 switch (data->state) {

 case 130:
  if (!ev.pulse)
   break;

  if (eq_margin(ev.duration, XMP_LEADER, XMP_UNIT / 2)) {
   data->count = 0;
   data->state = 128;
  }

  return 0;

 case 129:
  if (!ev.pulse)
   break;

  if (eq_margin(ev.duration, XMP_LEADER, XMP_UNIT / 2))
   data->state = 128;

  return 0;

 case 128:
  if (ev.pulse)
   break;

  if (geq_margin(ev.duration, XMP_TRAILER_SPACE, XMP_NIBBLE_PREFIX)) {
   int divider, i;
   u8 addr, subaddr, subaddr2, toggle, oem, obc1, obc2, sum1, sum2;
   u32 *n;
   u32 scancode;

   if (data->count != 16) {
    dev_dbg(&dev->dev, "received TRAILER period at index %d: %u\n",
     data->count, ev.duration);
    data->state = 130;
    return -EINVAL;
   }

   n = data->durations;





   divider = (n[3] - XMP_NIBBLE_PREFIX) / 15 - 2000;
   if (divider < 50) {
    dev_dbg(&dev->dev, "divider to small %d.\n",
     divider);
    data->state = 130;
    return -EINVAL;
   }


   for (i = 0; i < 16; i++)
    n[i] = (n[i] - XMP_NIBBLE_PREFIX) / divider;
   sum1 = (15 + n[0] + n[1] + n[2] + n[3] +
    n[4] + n[5] + n[6] + n[7]) % 16;
   sum2 = (15 + n[8] + n[9] + n[10] + n[11] +
    n[12] + n[13] + n[14] + n[15]) % 16;

   if (sum1 != 15 || sum2 != 15) {
    dev_dbg(&dev->dev, "checksum errors sum1=0x%X sum2=0x%X\n",
     sum1, sum2);
    data->state = 130;
    return -EINVAL;
   }

   subaddr = n[0] << 4 | n[2];
   subaddr2 = n[8] << 4 | n[11];
   oem = n[4] << 4 | n[5];
   addr = n[6] << 4 | n[7];
   toggle = n[10];
   obc1 = n[12] << 4 | n[13];
   obc2 = n[14] << 4 | n[15];
   if (subaddr != subaddr2) {
    dev_dbg(&dev->dev, "subaddress nibbles mismatch 0x%02X != 0x%02X\n",
     subaddr, subaddr2);
    data->state = 130;
    return -EINVAL;
   }
   if (oem != 0x44)
    dev_dbg(&dev->dev, "Warning: OEM nibbles 0x%02X. Expected 0x44\n",
     oem);

   scancode = addr << 24 | subaddr << 16 |
       obc1 << 8 | obc2;
   dev_dbg(&dev->dev, "XMP scancode 0x%06x\n", scancode);

   if (toggle == 0) {
    rc_keydown(dev, RC_PROTO_XMP, scancode, 0);
   } else {
    rc_repeat(dev);
    dev_dbg(&dev->dev, "Repeat last key\n");
   }
   data->state = 130;

   return 0;

  } else if (geq_margin(ev.duration, XMP_HALFFRAME_SPACE, XMP_NIBBLE_PREFIX)) {

   if (data->count == 16) {
    dev_dbg(&dev->dev, "received half frame pulse at index %d. Probably a final frame key-up event: %u\n",
     data->count, ev.duration);





    data->count = 8;
   }

   else if (data->count != 8)
    dev_dbg(&dev->dev, "received half frame pulse at index %d: %u\n",
     data->count, ev.duration);
   data->state = 129;

   return 0;

  } else if (geq_margin(ev.duration, XMP_NIBBLE_PREFIX, XMP_UNIT)) {

   if (data->count == 16) {
    dev_dbg(&dev->dev, "to many pulses (%d) ignoring: %u\n",
     data->count, ev.duration);
    data->state = 130;
    return -EINVAL;
   }
   data->durations[data->count] = ev.duration;
   data->count++;
   data->state = 129;

   return 0;

  }

  break;
 }

 dev_dbg(&dev->dev, "XMP decode failed at count %d state %d (%uus %s)\n",
  data->count, data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 130;
 return -EINVAL;
}
