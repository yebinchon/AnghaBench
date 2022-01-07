
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct hso_tiocmget {int waitq; int mutex; scalar_t__ urb; void* endp; void* serial_state_notification; } ;
struct hso_serial_state_notification {int dummy; } ;
struct TYPE_2__ {struct hso_serial* dev_serial; } ;
struct hso_serial {int minor; int write_data; void* out_endp; void* in_endp; struct hso_tiocmget* tiocmget; TYPE_1__ port_data; struct hso_serial* parent; } ;
struct hso_device {int minor; int write_data; void* out_endp; void* in_endp; struct hso_tiocmget* tiocmget; TYPE_1__ port_data; struct hso_device* parent; } ;


 int BULK_URB_RX_SIZE ;
 int BULK_URB_TX_SIZE ;
 int GFP_KERNEL ;
 int HSO_PORT_MASK ;
 int HSO_PORT_MODEM ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_INT ;
 int dev_err (int *,char*) ;
 struct hso_serial* hso_create_device (struct usb_interface*,int) ;
 int hso_free_tiomget (struct hso_serial*) ;
 void* hso_get_ep (struct usb_interface*,int ,int ) ;
 int hso_log_port (struct hso_serial*) ;
 scalar_t__ hso_serial_common_create (struct hso_serial*,int,int ,int ) ;
 int hso_serial_common_free (struct hso_serial*) ;
 int hso_serial_tty_unregister (struct hso_serial*) ;
 int hso_std_serial_write_data ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hso_serial*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int set_serial_by_index (int ,struct hso_serial*) ;
 scalar_t__ usb_alloc_urb (int ,int ) ;

__attribute__((used)) static struct hso_device *hso_create_bulk_serial_device(
   struct usb_interface *interface, int port)
{
 struct hso_device *hso_dev;
 struct hso_serial *serial;
 int num_urbs;
 struct hso_tiocmget *tiocmget;

 hso_dev = hso_create_device(interface, port);
 if (!hso_dev)
  return ((void*)0);

 serial = kzalloc(sizeof(*serial), GFP_KERNEL);
 if (!serial)
  goto exit;

 serial->parent = hso_dev;
 hso_dev->port_data.dev_serial = serial;

 if ((port & HSO_PORT_MASK) == HSO_PORT_MODEM) {
  num_urbs = 2;
  serial->tiocmget = kzalloc(sizeof(struct hso_tiocmget),
        GFP_KERNEL);
  serial->tiocmget->serial_state_notification
   = kzalloc(sizeof(struct hso_serial_state_notification),
        GFP_KERNEL);



  if (serial->tiocmget && serial->tiocmget->serial_state_notification) {
   tiocmget = serial->tiocmget;
   tiocmget->endp = hso_get_ep(interface,
          USB_ENDPOINT_XFER_INT,
          USB_DIR_IN);
   if (!tiocmget->endp) {
    dev_err(&interface->dev, "Failed to find INT IN ep\n");
    goto exit;
   }

   tiocmget->urb = usb_alloc_urb(0, GFP_KERNEL);
   if (tiocmget->urb) {
    mutex_init(&tiocmget->mutex);
    init_waitqueue_head(&tiocmget->waitq);
   } else
    hso_free_tiomget(serial);
  }
 }
 else
  num_urbs = 1;

 if (hso_serial_common_create(serial, num_urbs, BULK_URB_RX_SIZE,
         BULK_URB_TX_SIZE))
  goto exit;

 serial->in_endp = hso_get_ep(interface, USB_ENDPOINT_XFER_BULK,
         USB_DIR_IN);
 if (!serial->in_endp) {
  dev_err(&interface->dev, "Failed to find BULK IN ep\n");
  goto exit2;
 }

 if (!
     (serial->out_endp =
      hso_get_ep(interface, USB_ENDPOINT_XFER_BULK, USB_DIR_OUT))) {
  dev_err(&interface->dev, "Failed to find BULK IN ep\n");
  goto exit2;
 }

 serial->write_data = hso_std_serial_write_data;


 set_serial_by_index(serial->minor, serial);


 hso_log_port(hso_dev);


 return hso_dev;

exit2:
 hso_serial_tty_unregister(serial);
 hso_serial_common_free(serial);
exit:
 hso_free_tiomget(serial);
 kfree(serial);
 kfree(hso_dev);
 return ((void*)0);
}
