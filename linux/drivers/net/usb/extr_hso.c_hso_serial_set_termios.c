
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int c_cflag; } ;
struct tty_struct {struct ktermios termios; struct hso_serial* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct hso_serial {int serial_lock; TYPE_1__ port; } ;


 int _hso_serial_set_termios (struct tty_struct*,struct ktermios*) ;
 int hso_dbg (int,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hso_serial_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct hso_serial *serial = tty->driver_data;
 unsigned long flags;

 if (old)
  hso_dbg(0x16, "Termios called with: cflags new[%d] - old[%d]\n",
   tty->termios.c_cflag, old->c_cflag);


 spin_lock_irqsave(&serial->serial_lock, flags);
 if (serial->port.count)
  _hso_serial_set_termios(tty, old);
 else
  tty->termios = *old;
 spin_unlock_irqrestore(&serial->serial_lock, flags);


}
