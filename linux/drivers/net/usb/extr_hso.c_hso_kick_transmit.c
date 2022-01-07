
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_serial {int tx_urb_used; int (* write_data ) (struct hso_serial*) ;int serial_lock; scalar_t__ tx_data; scalar_t__ tx_buffer_count; scalar_t__ tx_data_count; int tx_buffer; int parent; } ;


 int EAGAIN ;
 int hso_get_activity (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hso_serial*) ;
 int swap (int ,scalar_t__) ;

__attribute__((used)) static void hso_kick_transmit(struct hso_serial *serial)
{
 unsigned long flags;
 int res;

 spin_lock_irqsave(&serial->serial_lock, flags);
 if (!serial->tx_buffer_count)
  goto out;

 if (serial->tx_urb_used)
  goto out;


 if (hso_get_activity(serial->parent) == -EAGAIN)
  goto out;


 swap(serial->tx_buffer, serial->tx_data);
 serial->tx_data_count = serial->tx_buffer_count;
 serial->tx_buffer_count = 0;


 if (serial->tx_data && serial->write_data) {
  res = serial->write_data(serial);
  if (res >= 0)
   serial->tx_urb_used = 1;
 }
out:
 spin_unlock_irqrestore(&serial->serial_lock, flags);
}
