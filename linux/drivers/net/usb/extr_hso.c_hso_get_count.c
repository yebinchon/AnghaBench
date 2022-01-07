
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_icount {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct hso_tiocmget {int icount; } ;
struct hso_serial {int serial_lock; struct hso_tiocmget* tiocmget; } ;


 int ENOENT ;
 int memcpy (struct uart_icount*,int *,int) ;
 int memset (struct serial_icounter_struct*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hso_get_count(struct tty_struct *tty,
    struct serial_icounter_struct *icount)
{
 struct uart_icount cnow;
 struct hso_serial *serial = tty->driver_data;
 struct hso_tiocmget *tiocmget = serial->tiocmget;

 memset(icount, 0, sizeof(struct serial_icounter_struct));

 if (!tiocmget)
   return -ENOENT;
 spin_lock_irq(&serial->serial_lock);
 memcpy(&cnow, &tiocmget->icount, sizeof(struct uart_icount));
 spin_unlock_irq(&serial->serial_lock);

 icount->cts = cnow.cts;
 icount->dsr = cnow.dsr;
 icount->rng = cnow.rng;
 icount->dcd = cnow.dcd;
 icount->rx = cnow.rx;
 icount->tx = cnow.tx;
 icount->frame = cnow.frame;
 icount->overrun = cnow.overrun;
 icount->parity = cnow.parity;
 icount->brk = cnow.brk;
 icount->buf_overrun = cnow.buf_overrun;

 return 0;
}
