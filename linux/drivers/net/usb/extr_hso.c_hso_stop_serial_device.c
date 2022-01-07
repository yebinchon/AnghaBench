
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct hso_tiocmget {struct urb* urb; int waitq; } ;
struct hso_serial {int num_rx_urbs; struct hso_tiocmget* tiocmget; TYPE_1__* shared_int; struct urb* tx_urb; scalar_t__ curr_rx_urb_idx; scalar_t__* rx_urb_filled; struct urb** rx_urb; } ;
struct hso_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_count; int shared_int_lock; struct urb* shared_intr_urb; } ;


 int ENODEV ;
 struct hso_serial* dev2ser (struct hso_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (struct urb*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int hso_stop_serial_device(struct hso_device *hso_dev)
{
 int i;
 struct hso_serial *serial = dev2ser(hso_dev);
 struct hso_tiocmget *tiocmget;

 if (!serial)
  return -ENODEV;

 for (i = 0; i < serial->num_rx_urbs; i++) {
  if (serial->rx_urb[i]) {
   usb_kill_urb(serial->rx_urb[i]);
   serial->rx_urb_filled[i] = 0;
  }
 }
 serial->curr_rx_urb_idx = 0;

 if (serial->tx_urb)
  usb_kill_urb(serial->tx_urb);

 if (serial->shared_int) {
  mutex_lock(&serial->shared_int->shared_int_lock);
  if (serial->shared_int->use_count &&
      (--serial->shared_int->use_count == 0)) {
   struct urb *urb;

   urb = serial->shared_int->shared_intr_urb;
   if (urb)
    usb_kill_urb(urb);
  }
  mutex_unlock(&serial->shared_int->shared_int_lock);
 }
 tiocmget = serial->tiocmget;
 if (tiocmget) {
  wake_up_interruptible(&tiocmget->waitq);
  usb_kill_urb(tiocmget->urb);
 }

 return 0;
}
