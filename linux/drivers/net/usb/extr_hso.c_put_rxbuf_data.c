
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer; } ;
struct tty_struct {int dummy; } ;
struct hso_serial {scalar_t__* rx_urb_filled; TYPE_2__* parent; int port; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int hso_dbg (int,char*) ;
 size_t hso_urb_to_index (struct hso_serial*,struct urb*) ;
 int tty_buffer_request_room (int *,int) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,int ,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 scalar_t__ tty_throttled (struct tty_struct*) ;

__attribute__((used)) static int put_rxbuf_data(struct urb *urb, struct hso_serial *serial)
{
 struct tty_struct *tty;
 int count;


 if (urb == ((void*)0) || serial == ((void*)0)) {
  hso_dbg(0x1, "serial = NULL\n");
  return -2;
 }

 tty = tty_port_tty_get(&serial->port);

 if (tty && tty_throttled(tty)) {
  tty_kref_put(tty);
  return -1;
 }


 hso_dbg(0x1, "data to push to tty\n");
 count = tty_buffer_request_room(&serial->port, urb->actual_length);
 if (count >= urb->actual_length) {
  tty_insert_flip_string(&serial->port, urb->transfer_buffer,
           urb->actual_length);
  tty_flip_buffer_push(&serial->port);
 } else {
  dev_warn(&serial->parent->usb->dev,
    "dropping data, %d bytes lost\n", urb->actual_length);
 }

 tty_kref_put(tty);

 serial->rx_urb_filled[hso_urb_to_index(serial, urb)] = 0;

 return 0;
}
