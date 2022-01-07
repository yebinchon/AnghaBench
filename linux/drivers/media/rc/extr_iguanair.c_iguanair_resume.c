
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct iguanair {int lock; int dev; scalar_t__ receiver_on; int urb_in; } ;


 int GFP_KERNEL ;
 int dev_warn (int ,char*,...) ;
 int iguanair_receiver (struct iguanair*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iguanair* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int iguanair_resume(struct usb_interface *intf)
{
 struct iguanair *ir = usb_get_intfdata(intf);
 int rc = 0;

 mutex_lock(&ir->lock);

 rc = usb_submit_urb(ir->urb_in, GFP_KERNEL);
 if (rc)
  dev_warn(&intf->dev, "failed to submit urb: %d\n", rc);

 if (ir->receiver_on) {
  rc = iguanair_receiver(ir, 1);
  if (rc)
   dev_warn(ir->dev, "failed to enable receiver after resume\n");
 }

 mutex_unlock(&ir->lock);

 return rc;
}
