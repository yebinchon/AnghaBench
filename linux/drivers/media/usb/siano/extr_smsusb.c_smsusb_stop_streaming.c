
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsusb_device_t {TYPE_1__* surbs; int coredev; } ;
struct TYPE_2__ {int * cb; int urb; } ;


 int MAX_URBS ;
 int smscore_putbuffer (int ,int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void smsusb_stop_streaming(struct smsusb_device_t *dev)
{
 int i;

 for (i = 0; i < MAX_URBS; i++) {
  usb_kill_urb(&dev->surbs[i].urb);

  if (dev->surbs[i].cb) {
   smscore_putbuffer(dev->coredev, dev->surbs[i].cb);
   dev->surbs[i].cb = ((void*)0);
  }
 }
}
