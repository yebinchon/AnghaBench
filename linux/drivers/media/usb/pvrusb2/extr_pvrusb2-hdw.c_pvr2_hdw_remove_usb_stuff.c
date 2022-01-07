
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int flag_disconnected; int * usb_intf; int * usb_dev; int v4l2_dev; int * ctl_write_buffer; int * ctl_read_buffer; int * ctl_write_urb; int * ctl_read_urb; } ;


 int PVR2_TRACE_INIT ;
 int kfree (int *) ;
 int pvr2_hdw_render_useless (struct pvr2_hdw*) ;
 int pvr2_trace (int ,char*,struct pvr2_hdw*) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int v4l2_device_disconnect (int *) ;

__attribute__((used)) static void pvr2_hdw_remove_usb_stuff(struct pvr2_hdw *hdw)
{
 if (hdw->flag_disconnected) return;
 pvr2_trace(PVR2_TRACE_INIT,"pvr2_hdw_remove_usb_stuff: hdw=%p",hdw);
 if (hdw->ctl_read_urb) {
  usb_kill_urb(hdw->ctl_read_urb);
  usb_free_urb(hdw->ctl_read_urb);
  hdw->ctl_read_urb = ((void*)0);
 }
 if (hdw->ctl_write_urb) {
  usb_kill_urb(hdw->ctl_write_urb);
  usb_free_urb(hdw->ctl_write_urb);
  hdw->ctl_write_urb = ((void*)0);
 }
 if (hdw->ctl_read_buffer) {
  kfree(hdw->ctl_read_buffer);
  hdw->ctl_read_buffer = ((void*)0);
 }
 if (hdw->ctl_write_buffer) {
  kfree(hdw->ctl_write_buffer);
  hdw->ctl_write_buffer = ((void*)0);
 }
 hdw->flag_disconnected = !0;



 v4l2_device_disconnect(&hdw->v4l2_dev);
 hdw->usb_dev = ((void*)0);
 hdw->usb_intf = ((void*)0);
 pvr2_hdw_render_useless(hdw);
}
