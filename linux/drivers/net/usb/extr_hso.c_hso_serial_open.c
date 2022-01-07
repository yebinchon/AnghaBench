
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct hso_serial* driver_data; int index; } ;
struct TYPE_4__ {int count; } ;
struct hso_serial {scalar_t__ magic; TYPE_2__* parent; TYPE_1__ port; int unthrottle_tasklet; int rx_state; int minor; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int mutex; int interface; int ref; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 scalar_t__ HSO_SERIAL_MAGIC ;
 int RX_IDLE ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int WARN_ON (int) ;
 int _hso_serial_set_termios (struct tty_struct*,int *) ;
 struct hso_serial* get_serial_by_index (int ) ;
 int hso_dbg (int,char*,...) ;
 int hso_serial_tiocmset (struct tty_struct*,int,int ) ;
 int hso_start_serial_device (TYPE_2__*,int ) ;
 int hso_stop_serial_device (TYPE_2__*) ;
 scalar_t__ hso_unthrottle_tasklet ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int tty_port_tty_set (TYPE_1__*,struct tty_struct*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int hso_serial_open(struct tty_struct *tty, struct file *filp)
{
 struct hso_serial *serial = get_serial_by_index(tty->index);
 int result;


 if (serial == ((void*)0) || serial->magic != HSO_SERIAL_MAGIC) {
  WARN_ON(1);
  tty->driver_data = ((void*)0);
  hso_dbg(0x1, "Failed to open port\n");
  return -ENODEV;
 }

 mutex_lock(&serial->parent->mutex);
 result = usb_autopm_get_interface(serial->parent->interface);
 if (result < 0)
  goto err_out;

 hso_dbg(0x1, "Opening %d\n", serial->minor);


 tty->driver_data = serial;
 tty_port_tty_set(&serial->port, tty);


 serial->port.count++;
 if (serial->port.count == 1) {
  serial->rx_state = RX_IDLE;

  _hso_serial_set_termios(tty, ((void*)0));
  tasklet_init(&serial->unthrottle_tasklet,
        (void (*)(unsigned long))hso_unthrottle_tasklet,
        (unsigned long)serial);
  result = hso_start_serial_device(serial->parent, GFP_KERNEL);
  if (result) {
   hso_stop_serial_device(serial->parent);
   serial->port.count--;
  } else {
   kref_get(&serial->parent->ref);
  }
 } else {
  hso_dbg(0x1, "Port was already open\n");
 }

 usb_autopm_put_interface(serial->parent->interface);


 if (result)
  hso_serial_tiocmset(tty, TIOCM_RTS | TIOCM_DTR, 0);
err_out:
 mutex_unlock(&serial->parent->mutex);
 return result;
}
