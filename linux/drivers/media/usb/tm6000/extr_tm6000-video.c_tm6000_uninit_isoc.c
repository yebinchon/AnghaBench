
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_2__ {int num_bufs; struct urb** transfer_buffer; struct urb** urb; int * buf; } ;
struct tm6000_core {TYPE_1__ isoc_ctl; } ;


 int keep_urb ;
 int kfree (struct urb**) ;
 int tm6000_free_urb_buffers (struct tm6000_core*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static void tm6000_uninit_isoc(struct tm6000_core *dev)
{
 struct urb *urb;
 int i;

 dev->isoc_ctl.buf = ((void*)0);
 for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
  urb = dev->isoc_ctl.urb[i];
  if (urb) {
   usb_kill_urb(urb);
   usb_unlink_urb(urb);
   usb_free_urb(urb);
   dev->isoc_ctl.urb[i] = ((void*)0);
  }
  dev->isoc_ctl.transfer_buffer[i] = ((void*)0);
 }

 if (!keep_urb)
  tm6000_free_urb_buffers(dev);

 kfree(dev->isoc_ctl.urb);
 kfree(dev->isoc_ctl.transfer_buffer);

 dev->isoc_ctl.urb = ((void*)0);
 dev->isoc_ctl.transfer_buffer = ((void*)0);
 dev->isoc_ctl.num_bufs = 0;
}
