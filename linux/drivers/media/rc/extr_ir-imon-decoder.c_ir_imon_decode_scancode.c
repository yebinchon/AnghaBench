
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rc_dev {int input_dev; TYPE_1__* raw; } ;
struct imon_dec {int bits; int stick_keyboard; } ;
struct TYPE_2__ {struct imon_dec imon; } ;


 int BTN_LEFT ;
 int BTN_RIGHT ;
 int RC_PROTO_IMON ;
 int REL_X ;
 int REL_Y ;
 scalar_t__ abs (int) ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,int) ;
 int rc_keydown (struct rc_dev*,int ,int,int ) ;

__attribute__((used)) static void ir_imon_decode_scancode(struct rc_dev *dev)
{
 struct imon_dec *imon = &dev->raw->imon;


 if (imon->bits == 0x299115b7)
  imon->stick_keyboard = !imon->stick_keyboard;

 if ((imon->bits & 0xfc0000ff) == 0x680000b7) {
  int rel_x, rel_y;
  u8 buf;

  buf = imon->bits >> 16;
  rel_x = (buf & 0x08) | (buf & 0x10) >> 2 |
   (buf & 0x20) >> 4 | (buf & 0x40) >> 6;
  if (imon->bits & 0x02000000)
   rel_x |= ~0x0f;
  buf = imon->bits >> 8;
  rel_y = (buf & 0x08) | (buf & 0x10) >> 2 |
   (buf & 0x20) >> 4 | (buf & 0x40) >> 6;
  if (imon->bits & 0x01000000)
   rel_y |= ~0x0f;

  if (rel_x && rel_y && imon->stick_keyboard) {
   if (abs(rel_y) > abs(rel_x))
    imon->bits = rel_y > 0 ?
     0x289515b7 :
     0x2aa515b7;
   else
    imon->bits = rel_x > 0 ?
     0x2ba515b7 :
     0x29a515b7;
  }

  if (!imon->stick_keyboard) {
   input_report_rel(dev->input_dev, REL_X, rel_x);
   input_report_rel(dev->input_dev, REL_Y, rel_y);

   input_report_key(dev->input_dev, BTN_LEFT,
      (imon->bits & 0x00010000) != 0);
   input_report_key(dev->input_dev, BTN_RIGHT,
      (imon->bits & 0x00040000) != 0);
  }
 }

 rc_keydown(dev, RC_PROTO_IMON, imon->bits, 0);
}
