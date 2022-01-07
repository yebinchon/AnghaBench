
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_serial {int num_rx_urbs; int port; int tx_data; int tx_buffer; int tx_urb; int * rx_data; int * rx_urb; } ;


 int kfree (int ) ;
 int tty_port_destroy (int *) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void hso_serial_common_free(struct hso_serial *serial)
{
 int i;

 for (i = 0; i < serial->num_rx_urbs; i++) {

  usb_free_urb(serial->rx_urb[i]);

  kfree(serial->rx_data[i]);
 }


 usb_free_urb(serial->tx_urb);
 kfree(serial->tx_buffer);
 kfree(serial->tx_data);
 tty_port_destroy(&serial->port);
}
