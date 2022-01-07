
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusbir {scalar_t__ led_on; scalar_t__ is_led_on; scalar_t__* bulk_buffer; int led_complete; int dev; int bulk_urb; scalar_t__ udev; } ;


 int GFP_ATOMIC ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 int atomic_dec (int *) ;
 int dev_warn (int ,char*,int) ;
 int smp_mb () ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void ttusbir_set_led(struct ttusbir *tt)
{
 int ret;

 smp_mb();

 if (tt->led_on != tt->is_led_on && tt->udev &&
    atomic_add_unless(&tt->led_complete, 1, 1)) {
  tt->bulk_buffer[4] = tt->is_led_on = tt->led_on;
  ret = usb_submit_urb(tt->bulk_urb, GFP_ATOMIC);
  if (ret) {
   dev_warn(tt->dev, "failed to submit bulk urb: %d\n",
         ret);
   atomic_dec(&tt->led_complete);
  }
 }
}
