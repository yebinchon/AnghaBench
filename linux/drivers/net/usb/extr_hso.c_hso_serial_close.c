
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct hso_serial {TYPE_2__* parent; int unthrottle_tasklet; TYPE_1__ port; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int mutex; int interface; int usb_gone; } ;


 int hso_dbg (int,char*) ;
 int hso_stop_serial_device (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_kill (int *) ;
 int tty_port_tty_set (TYPE_1__*,int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void hso_serial_close(struct tty_struct *tty, struct file *filp)
{
 struct hso_serial *serial = tty->driver_data;
 u8 usb_gone;

 hso_dbg(0x1, "Closing serial port\n");


 if (serial == ((void*)0))
  return;

 mutex_lock(&serial->parent->mutex);
 usb_gone = serial->parent->usb_gone;

 if (!usb_gone)
  usb_autopm_get_interface(serial->parent->interface);



 serial->port.count--;

 if (serial->port.count <= 0) {
  serial->port.count = 0;
  tty_port_tty_set(&serial->port, ((void*)0));
  if (!usb_gone)
   hso_stop_serial_device(serial->parent);
  tasklet_kill(&serial->unthrottle_tasklet);
 }

 if (!usb_gone)
  usb_autopm_put_interface(serial->parent->interface);

 mutex_unlock(&serial->parent->mutex);
}
