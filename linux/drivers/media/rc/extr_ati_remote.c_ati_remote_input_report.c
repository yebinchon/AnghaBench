
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct urb {int actual_length; TYPE_1__* dev; struct ati_remote* context; } ;
struct input_dev {int dummy; } ;
struct ati_remote {unsigned char* inbuf; unsigned long old_jiffies; unsigned char old_data; int repeat_count; unsigned long first_jiffies; TYPE_2__* interface; int rdev; struct input_dev* idev; } ;
struct TYPE_6__ {scalar_t__ kind; unsigned char data; int code; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int dev; } ;


 int EV_KEY ;
 scalar_t__ KEY_RESERVED ;
 scalar_t__ KIND_ACCEL ;
 scalar_t__ KIND_END ;
 scalar_t__ KIND_FILTERED ;
 scalar_t__ KIND_LITERAL ;
 int RC_PROTO_OTHER ;
 int REL_X ;
 int REL_Y ;
 int ati_remote_compute_accel (struct ati_remote*) ;
 int ati_remote_dump (int *,unsigned char*,int) ;
 TYPE_3__* ati_remote_tbl ;
 int channel_mask ;
 int dbginfo (int *,char*,int,...) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int input_event (struct input_dev*,int ,int,int) ;
 int input_report_rel (struct input_dev*,int ,char) ;
 int input_sync (struct input_dev*) ;
 void* jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ rc_g_keycode_from_table (int ,unsigned char) ;
 int rc_keydown_notimeout (int ,int ,unsigned char,unsigned char) ;
 int rc_keyup (int ) ;
 int repeat_delay ;
 int repeat_filter ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;

__attribute__((used)) static void ati_remote_input_report(struct urb *urb)
{
 struct ati_remote *ati_remote = urb->context;
 unsigned char *data= ati_remote->inbuf;
 struct input_dev *dev = ati_remote->idev;
 int index = -1;
 int remote_num;
 unsigned char scancode;
 u32 wheel_keycode = KEY_RESERVED;
 int i;
 if ( urb->actual_length != 4 || data[0] != 0x14 ||
      data[1] != (unsigned char)(data[2] + data[3] + 0xD5) ||
      (data[3] & 0x0f) != 0x00) {
  ati_remote_dump(&urb->dev->dev, data, urb->actual_length);
  return;
 }

 if (data[1] != ((data[2] + data[3] + 0xd5) & 0xff)) {
  dbginfo(&ati_remote->interface->dev,
   "wrong checksum in input: %*ph\n", 4, data);
  return;
 }



 remote_num = (data[3] >> 4) & 0x0f;
 if (channel_mask & (1 << (remote_num + 1))) {
  dbginfo(&ati_remote->interface->dev,
   "Masked input from channel 0x%02x: data %02x, mask= 0x%02lx\n",
   remote_num, data[2], channel_mask);
  return;
 }





 scancode = data[2] & 0x7f;

 dbginfo(&ati_remote->interface->dev,
  "channel 0x%02x; key data %02x, scancode %02x\n",
  remote_num, data[2], scancode);

 if (scancode >= 0x70) {






  wheel_keycode = rc_g_keycode_from_table(ati_remote->rdev,
       scancode & 0x78);

  if (wheel_keycode == KEY_RESERVED) {





   for (i = 0; ati_remote_tbl[i].kind != KIND_END; i++) {
    if (scancode == ati_remote_tbl[i].data) {
     index = i;
     break;
    }
   }
  }
 }

 if (index >= 0 && ati_remote_tbl[index].kind == KIND_LITERAL) {




  input_event(dev, EV_KEY, ati_remote_tbl[index].code,
   !(data[2] & 1));

  ati_remote->old_jiffies = jiffies;

 } else if (index < 0 || ati_remote_tbl[index].kind == KIND_FILTERED) {
  unsigned long now = jiffies;


  if (ati_remote->old_data == data[2] &&
      time_before(now, ati_remote->old_jiffies +
         msecs_to_jiffies(repeat_filter))) {
   ati_remote->repeat_count++;
  } else {
   ati_remote->repeat_count = 0;
   ati_remote->first_jiffies = now;
  }

  ati_remote->old_jiffies = now;





  if (ati_remote->repeat_count > 0 &&
      (ati_remote->repeat_count < 5 ||
       time_before(now, ati_remote->first_jiffies +
          msecs_to_jiffies(repeat_delay))))
   return;

  if (index >= 0) {
   input_event(dev, EV_KEY, ati_remote_tbl[index].code, 1);
   input_event(dev, EV_KEY, ati_remote_tbl[index].code, 0);
  } else {

   int count = 1;

   if (wheel_keycode != KEY_RESERVED) {






    count = (scancode & 0x07) + 1;
    scancode &= 0x78;
   }

   while (count--) {





    rc_keydown_notimeout(ati_remote->rdev,
           RC_PROTO_OTHER,
           scancode, data[2]);
    rc_keyup(ati_remote->rdev);
   }
   goto nosync;
  }

 } else if (ati_remote_tbl[index].kind == KIND_ACCEL) {
  signed char dx = ati_remote_tbl[index].code >> 8;
  signed char dy = ati_remote_tbl[index].code & 255;






  int acc = ati_remote_compute_accel(ati_remote);
  if (dx)
   input_report_rel(dev, REL_X, dx * acc);
  if (dy)
   input_report_rel(dev, REL_Y, dy * acc);
  ati_remote->old_jiffies = jiffies;

 } else {
  dev_dbg(&ati_remote->interface->dev, "ati_remote kind=%d\n",
   ati_remote_tbl[index].kind);
  return;
 }
 input_sync(dev);
nosync:
 ati_remote->old_data = data[2];
}
