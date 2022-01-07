
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_2__ {int num_urb; struct urb** urb; } ;
struct em28xx {TYPE_1__ adev; } ;


 int dprintk (char*) ;
 int irqs_disabled () ;
 int usb_kill_urb (struct urb*) ;
 int usb_unlink_urb (struct urb*) ;

__attribute__((used)) static int em28xx_deinit_isoc_audio(struct em28xx *dev)
{
 int i;

 dprintk("Stopping isoc\n");
 for (i = 0; i < dev->adev.num_urb; i++) {
  struct urb *urb = dev->adev.urb[i];

  if (!irqs_disabled())
   usb_kill_urb(urb);
  else
   usb_unlink_urb(urb);
 }

 return 0;
}
