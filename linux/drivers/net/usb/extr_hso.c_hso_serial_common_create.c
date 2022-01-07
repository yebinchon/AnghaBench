
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hso_serial {int minor; int num_rx_urbs; int rx_data_length; int tx_data_length; void* tx_buffer; void* tx_data; scalar_t__ tx_buffer_count; scalar_t__ tx_data_count; TYPE_3__* tx_urb; void** rx_data; TYPE_2__** rx_urb; int serial_lock; int magic; TYPE_4__* parent; int port; } ;
struct TYPE_8__ {TYPE_1__* interface; int dev; } ;
struct TYPE_7__ {scalar_t__ transfer_buffer_length; int * transfer_buffer; } ;
struct TYPE_6__ {scalar_t__ transfer_buffer_length; int * transfer_buffer; } ;
struct TYPE_5__ {int dev; } ;


 int GFP_KERNEL ;
 int HSO_SERIAL_MAGIC ;
 int get_free_serial_index () ;
 int hso_serial_common_free (struct hso_serial*) ;
 int hso_serial_dev_groups ;
 int hso_serial_tty_unregister (struct hso_serial*) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tty_drv ;
 int tty_port_init (int *) ;
 int tty_port_register_device_attr (int *,int ,int,int *,TYPE_4__*,int ) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int hso_serial_common_create(struct hso_serial *serial, int num_urbs,
        int rx_size, int tx_size)
{
 int minor;
 int i;

 tty_port_init(&serial->port);

 minor = get_free_serial_index();
 if (minor < 0)
  goto exit;


 serial->parent->dev = tty_port_register_device_attr(&serial->port,
   tty_drv, minor, &serial->parent->interface->dev,
   serial->parent, hso_serial_dev_groups);


 serial->minor = minor;
 serial->magic = HSO_SERIAL_MAGIC;
 spin_lock_init(&serial->serial_lock);
 serial->num_rx_urbs = num_urbs;




 serial->rx_data_length = rx_size;
 for (i = 0; i < serial->num_rx_urbs; i++) {
  serial->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!serial->rx_urb[i])
   goto exit;
  serial->rx_urb[i]->transfer_buffer = ((void*)0);
  serial->rx_urb[i]->transfer_buffer_length = 0;
  serial->rx_data[i] = kzalloc(serial->rx_data_length,
          GFP_KERNEL);
  if (!serial->rx_data[i])
   goto exit;
 }


 serial->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!serial->tx_urb)
  goto exit;
 serial->tx_urb->transfer_buffer = ((void*)0);
 serial->tx_urb->transfer_buffer_length = 0;

 serial->tx_data_count = 0;
 serial->tx_buffer_count = 0;
 serial->tx_data_length = tx_size;
 serial->tx_data = kzalloc(serial->tx_data_length, GFP_KERNEL);
 if (!serial->tx_data)
  goto exit;

 serial->tx_buffer = kzalloc(serial->tx_data_length, GFP_KERNEL);
 if (!serial->tx_buffer)
  goto exit;

 return 0;
exit:
 hso_serial_tty_unregister(serial);
 hso_serial_common_free(serial);
 return -1;
}
