
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_tiocmget {struct hso_tiocmget* serial_state_notification; int * urb; } ;
struct hso_serial {struct hso_tiocmget* tiocmget; } ;


 int kfree (struct hso_tiocmget*) ;
 int usb_free_urb (int *) ;

__attribute__((used)) static void hso_free_tiomget(struct hso_serial *serial)
{
 struct hso_tiocmget *tiocmget;
 if (!serial)
  return;
 tiocmget = serial->tiocmget;
 if (tiocmget) {
  usb_free_urb(tiocmget->urb);
  tiocmget->urb = ((void*)0);
  serial->tiocmget = ((void*)0);
  kfree(tiocmget->serial_state_notification);
  tiocmget->serial_state_notification = ((void*)0);
  kfree(tiocmget);
 }
}
