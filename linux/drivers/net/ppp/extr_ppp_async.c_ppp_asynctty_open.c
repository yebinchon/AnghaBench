
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int receive_room; struct asyncppp* disc_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int speed; void* mtu; int * ops; struct asyncppp* private; } ;
struct asyncppp {unsigned int* xaccm; unsigned int raccm; int lcp_fcs; TYPE_2__ chan; int dead; int refcnt; int tsk; int rqueue; int obuf; int olim; int optr; int recv_lock; int xmit_lock; void* mru; struct tty_struct* tty; } ;
struct TYPE_3__ {int * write; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 void* PPP_MRU ;
 int async_ops ;
 int init_completion (int *) ;
 int kfree (struct asyncppp*) ;
 struct asyncppp* kzalloc (int,int ) ;
 int ppp_async_process ;
 int ppp_register_channel (TYPE_2__*) ;
 int refcount_set (int *,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tty_get_baud_rate (struct tty_struct*) ;

__attribute__((used)) static int
ppp_asynctty_open(struct tty_struct *tty)
{
 struct asyncppp *ap;
 int err;
 int speed;

 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;

 err = -ENOMEM;
 ap = kzalloc(sizeof(*ap), GFP_KERNEL);
 if (!ap)
  goto out;


 ap->tty = tty;
 ap->mru = PPP_MRU;
 spin_lock_init(&ap->xmit_lock);
 spin_lock_init(&ap->recv_lock);
 ap->xaccm[0] = ~0U;
 ap->xaccm[3] = 0x60000000U;
 ap->raccm = ~0U;
 ap->optr = ap->obuf;
 ap->olim = ap->obuf;
 ap->lcp_fcs = -1;

 skb_queue_head_init(&ap->rqueue);
 tasklet_init(&ap->tsk, ppp_async_process, (unsigned long) ap);

 refcount_set(&ap->refcnt, 1);
 init_completion(&ap->dead);

 ap->chan.private = ap;
 ap->chan.ops = &async_ops;
 ap->chan.mtu = PPP_MRU;
 speed = tty_get_baud_rate(tty);
 ap->chan.speed = speed;
 err = ppp_register_channel(&ap->chan);
 if (err)
  goto out_free;

 tty->disc_data = ap;
 tty->receive_room = 65536;
 return 0;

 out_free:
 kfree(ap);
 out:
 return err;
}
