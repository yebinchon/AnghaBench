
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;
struct syncppp {int tsk; int xmit_flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int XMIT_WAKEUP ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 struct syncppp* sp_get (struct tty_struct*) ;
 int sp_put (struct syncppp*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
ppp_sync_wakeup(struct tty_struct *tty)
{
 struct syncppp *ap = sp_get(tty);

 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 if (!ap)
  return;
 set_bit(XMIT_WAKEUP, &ap->xmit_flags);
 tasklet_schedule(&ap->tsk);
 sp_put(ap);
}
