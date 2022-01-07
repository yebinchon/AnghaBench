
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct iguanair {int lock; int urb_out; int urb_in; int dev; scalar_t__ receiver_on; } ;
typedef int pm_message_t ;


 int dev_warn (int ,char*) ;
 int iguanair_receiver (struct iguanair*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iguanair* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int iguanair_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct iguanair *ir = usb_get_intfdata(intf);
 int rc = 0;

 mutex_lock(&ir->lock);

 if (ir->receiver_on) {
  rc = iguanair_receiver(ir, 0);
  if (rc)
   dev_warn(ir->dev, "failed to disable receiver for suspend\n");
 }

 usb_kill_urb(ir->urb_in);
 usb_kill_urb(ir->urb_out);

 mutex_unlock(&ir->lock);

 return rc;
}
