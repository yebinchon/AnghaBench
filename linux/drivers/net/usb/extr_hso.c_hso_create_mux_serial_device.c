
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct hso_shared_int {int shared_int_lock; int ref_count; } ;
struct TYPE_2__ {struct hso_serial* dev_serial; } ;
struct hso_serial {int minor; struct hso_shared_int* shared_int; int write_data; int tx_data_length; struct hso_serial* parent; TYPE_1__ port_data; } ;
struct hso_device {int minor; struct hso_shared_int* shared_int; int write_data; int tx_data_length; struct hso_device* parent; TYPE_1__ port_data; } ;


 int CTRL_URB_RX_SIZE ;
 int CTRL_URB_TX_SIZE ;
 int GFP_KERNEL ;
 int HSO_INTF_MUX ;
 int HSO_PORT_MASK ;
 int HSO_PORT_NO_PORT ;
 struct hso_serial* hso_create_device (struct usb_interface*,int) ;
 int hso_log_port (struct hso_serial*) ;
 int hso_mux_serial_write_data ;
 int hso_mux_to_port (int) ;
 scalar_t__ hso_serial_common_create (struct hso_serial*,int,int ,int ) ;
 int kfree (struct hso_serial*) ;
 struct hso_serial* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_serial_by_index (int ,struct hso_serial*) ;
 int tty_drv ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static
struct hso_device *hso_create_mux_serial_device(struct usb_interface *interface,
      int port,
      struct hso_shared_int *mux)
{
 struct hso_device *hso_dev;
 struct hso_serial *serial;
 int port_spec;

 port_spec = HSO_INTF_MUX;
 port_spec &= ~HSO_PORT_MASK;

 port_spec |= hso_mux_to_port(port);
 if ((port_spec & HSO_PORT_MASK) == HSO_PORT_NO_PORT)
  return ((void*)0);

 hso_dev = hso_create_device(interface, port_spec);
 if (!hso_dev)
  return ((void*)0);

 serial = kzalloc(sizeof(*serial), GFP_KERNEL);
 if (!serial)
  goto exit;

 hso_dev->port_data.dev_serial = serial;
 serial->parent = hso_dev;

 if (hso_serial_common_create
     (serial, 1, CTRL_URB_RX_SIZE, CTRL_URB_TX_SIZE))
  goto exit;

 serial->tx_data_length--;
 serial->write_data = hso_mux_serial_write_data;

 serial->shared_int = mux;
 mutex_lock(&serial->shared_int->shared_int_lock);
 serial->shared_int->ref_count++;
 mutex_unlock(&serial->shared_int->shared_int_lock);


 set_serial_by_index(serial->minor, serial);


 hso_log_port(hso_dev);


 return hso_dev;

exit:
 if (serial) {
  tty_unregister_device(tty_drv, serial->minor);
  kfree(serial);
 }
 kfree(hso_dev);
 return ((void*)0);

}
