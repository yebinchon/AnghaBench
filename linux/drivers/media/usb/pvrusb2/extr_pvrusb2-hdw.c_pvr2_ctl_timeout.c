
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pvr2_hdw {int ctl_timeout_flag; int ctl_read_urb; scalar_t__ ctl_read_pend_flag; int ctl_write_urb; scalar_t__ ctl_write_pend_flag; } ;
struct hdw_timer {struct pvr2_hdw* hdw; } ;


 struct hdw_timer* from_timer (int ,struct timer_list*,int ) ;
 struct hdw_timer* timer ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void pvr2_ctl_timeout(struct timer_list *t)
{
 struct hdw_timer *timer = from_timer(timer, t, timer);
 struct pvr2_hdw *hdw = timer->hdw;

 if (hdw->ctl_write_pend_flag || hdw->ctl_read_pend_flag) {
  hdw->ctl_timeout_flag = !0;
  if (hdw->ctl_write_pend_flag)
   usb_unlink_urb(hdw->ctl_write_urb);
  if (hdw->ctl_read_pend_flag)
   usb_unlink_urb(hdw->ctl_read_urb);
 }
}
