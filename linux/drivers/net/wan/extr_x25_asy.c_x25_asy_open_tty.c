
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x25_asy {TYPE_2__* dev; struct tty_struct* tty; } ;
struct tty_struct {int receive_room; struct x25_asy* disc_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int * write; } ;


 int ARPHRD_X25 ;
 int ENFILE ;
 int EOPNOTSUPP ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 struct x25_asy* x25_asy_alloc () ;
 int x25_asy_free (struct x25_asy*) ;
 int x25_asy_open (TYPE_2__*) ;

__attribute__((used)) static int x25_asy_open_tty(struct tty_struct *tty)
{
 struct x25_asy *sl;
 int err;

 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;


 sl = x25_asy_alloc();
 if (sl == ((void*)0))
  return -ENFILE;

 sl->tty = tty;
 tty->disc_data = sl;
 tty->receive_room = 65536;
 tty_driver_flush_buffer(tty);
 tty_ldisc_flush(tty);


 sl->dev->type = ARPHRD_X25;


 err = x25_asy_open(sl->dev);
 if (err) {
  x25_asy_free(sl);
  return err;
 }

 return 0;
}
