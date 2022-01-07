
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hso_serial {int tx_data_count; int tx_data; int ctrl_req_tx; int tx_urb; TYPE_1__* parent; } ;
struct TYPE_2__ {int port_spec; } ;


 int EINVAL ;
 int HSO_PORT_MASK ;
 int USB_CDC_SEND_ENCAPSULATED_COMMAND ;
 int mux_device_request (struct hso_serial*,int ,int,int ,int *,int ,int ) ;

__attribute__((used)) static int hso_mux_serial_write_data(struct hso_serial *serial)
{
 if (((void*)0) == serial)
  return -EINVAL;

 return mux_device_request(serial,
      USB_CDC_SEND_ENCAPSULATED_COMMAND,
      serial->parent->port_spec & HSO_PORT_MASK,
      serial->tx_urb,
      &serial->ctrl_req_tx,
      serial->tx_data, serial->tx_data_count);
}
