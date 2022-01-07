
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hso_serial {int serial_lock; TYPE_1__* parent; } ;
struct TYPE_2__ {int port_spec; } ;


 int HSO_INTF_MUX ;
 int put_rxbuf_data_and_resubmit_bulk_urb (struct hso_serial*) ;
 int put_rxbuf_data_and_resubmit_ctrl_urb (struct hso_serial*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hso_unthrottle_tasklet(struct hso_serial *serial)
{
 unsigned long flags;

 spin_lock_irqsave(&serial->serial_lock, flags);
 if ((serial->parent->port_spec & HSO_INTF_MUX))
  put_rxbuf_data_and_resubmit_ctrl_urb(serial);
 else
  put_rxbuf_data_and_resubmit_bulk_urb(serial);
 spin_unlock_irqrestore(&serial->serial_lock, flags);
}
