
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {int rts_state; int dtr_state; TYPE_3__* parent; int serial_lock; } ;
struct TYPE_6__ {int port_spec; int usb; struct usb_interface* interface; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int EINVAL ;
 int HSO_PORT_MASK ;
 int HSO_PORT_MODEM ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int USB_CTRL_SET_TIMEOUT ;
 int hso_dbg (int,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int hso_serial_tiocmset(struct tty_struct *tty,
          unsigned int set, unsigned int clear)
{
 int val = 0;
 unsigned long flags;
 int if_num;
 struct hso_serial *serial = tty->driver_data;
 struct usb_interface *interface;


 if (!serial) {
  hso_dbg(0x1, "no tty structures\n");
  return -EINVAL;
 }

 if ((serial->parent->port_spec & HSO_PORT_MASK) != HSO_PORT_MODEM)
  return -EINVAL;

 interface = serial->parent->interface;
 if_num = interface->cur_altsetting->desc.bInterfaceNumber;

 spin_lock_irqsave(&serial->serial_lock, flags);
 if (set & TIOCM_RTS)
  serial->rts_state = 1;
 if (set & TIOCM_DTR)
  serial->dtr_state = 1;

 if (clear & TIOCM_RTS)
  serial->rts_state = 0;
 if (clear & TIOCM_DTR)
  serial->dtr_state = 0;

 if (serial->dtr_state)
  val |= 0x01;
 if (serial->rts_state)
  val |= 0x02;

 spin_unlock_irqrestore(&serial->serial_lock, flags);

 return usb_control_msg(serial->parent->usb,
          usb_rcvctrlpipe(serial->parent->usb, 0), 0x22,
          0x21, val, if_num, ((void*)0), 0,
          USB_CTRL_SET_TIMEOUT);
}
