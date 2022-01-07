
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct asyncppp {int tsk; int rqueue; int recv_lock; } ;


 struct asyncppp* ap_get (struct tty_struct*) ;
 int ap_put (struct asyncppp*) ;
 int ppp_async_input (struct asyncppp*,unsigned char const*,char*,int) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void
ppp_asynctty_receive(struct tty_struct *tty, const unsigned char *buf,
    char *cflags, int count)
{
 struct asyncppp *ap = ap_get(tty);
 unsigned long flags;

 if (!ap)
  return;
 spin_lock_irqsave(&ap->recv_lock, flags);
 ppp_async_input(ap, buf, cflags, count);
 spin_unlock_irqrestore(&ap->recv_lock, flags);
 if (!skb_queue_empty(&ap->rqueue))
  tasklet_schedule(&ap->tsk);
 ap_put(ap);
 tty_unthrottle(tty);
}
