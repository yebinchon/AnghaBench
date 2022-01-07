
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct imon_context {scalar_t__ display_type; int touch; int touch_y; int touch_x; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ IMON_DISPLAY_TYPE_VGA ;
 struct imon_context* from_timer (int ,struct timer_list*,int ) ;
 struct imon_context* ictx ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int ttimer ;

__attribute__((used)) static void imon_touch_display_timeout(struct timer_list *t)
{
 struct imon_context *ictx = from_timer(ictx, t, ttimer);

 if (ictx->display_type != IMON_DISPLAY_TYPE_VGA)
  return;

 input_report_abs(ictx->touch, ABS_X, ictx->touch_x);
 input_report_abs(ictx->touch, ABS_Y, ictx->touch_y);
 input_report_key(ictx->touch, BTN_TOUCH, 0x00);
 input_sync(ictx->touch);
}
