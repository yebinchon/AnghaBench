
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {unsigned char touch_x; int touch_y; int touch; int ttimer; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ TOUCH_TIMEOUT ;
 int input_report_abs (int ,int ,unsigned char) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void imon_touch_event(struct imon_context *ictx, unsigned char *buf)
{
 mod_timer(&ictx->ttimer, jiffies + TOUCH_TIMEOUT);
 ictx->touch_x = (buf[0] << 4) | (buf[1] >> 4);
 ictx->touch_y = 0xfff - ((buf[2] << 4) | (buf[1] & 0xf));
 input_report_abs(ictx->touch, ABS_X, ictx->touch_x);
 input_report_abs(ictx->touch, ABS_Y, ictx->touch_y);
 input_report_key(ictx->touch, BTN_TOUCH, 0x01);
 input_sync(ictx->touch);
}
