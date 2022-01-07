
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hso_serial {int num_rx_urbs; int rx_data_length; int * rx_data; int ctrl_req_rx; int * rx_urb; TYPE_1__* parent; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int port_spec; TYPE_2__* interface; } ;


 int CTRL_URB_RX_SIZE ;
 int EINVAL ;
 int HSO_PORT_MASK ;
 int USB_CDC_GET_ENCAPSULATED_RESPONSE ;
 int dev_err (int *,char*) ;
 int memset (int ,int ,int ) ;
 int mux_device_request (struct hso_serial*,int ,int,int ,int *,int ,int ) ;

__attribute__((used)) static int hso_mux_serial_read(struct hso_serial *serial)
{
 if (!serial)
  return -EINVAL;


 memset(serial->rx_data[0], 0, CTRL_URB_RX_SIZE);


 if (serial->num_rx_urbs != 1) {
  dev_err(&serial->parent->interface->dev,
   "ERROR: mux'd reads with multiple buffers "
   "not possible\n");
  return 0;
 }
 return mux_device_request(serial,
      USB_CDC_GET_ENCAPSULATED_RESPONSE,
      serial->parent->port_spec & HSO_PORT_MASK,
      serial->rx_urb[0],
      &serial->ctrl_req_rx,
      serial->rx_data[0], serial->rx_data_length);
}
