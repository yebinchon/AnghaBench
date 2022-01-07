
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; struct sixpack* disc_data; TYPE_1__* ops; } ;
struct sixpack {char* rbuff; char* xbuff; unsigned long buffsize; int led_state; int status; int status1; int lock; int resync_t; int tx_t; scalar_t__ tx_enable; scalar_t__ status2; int slottime; int persistence; int tx_delay; scalar_t__ duplex; scalar_t__ flags; scalar_t__ xleft; scalar_t__ rx_count_cooked; scalar_t__ rx_count; scalar_t__ rcount; scalar_t__ mtu; struct tty_struct* tty; int dead; int refcnt; struct net_device* dev; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int * write; } ;


 scalar_t__ AX25_MTU ;
 int CAP_NET_ADMIN ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 int GFP_KERNEL ;
 int NET_NAME_UNKNOWN ;
 int SIXP_PERSIST ;
 int SIXP_SLOTTIME ;
 int SIXP_TXDELAY ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int capable (int ) ;
 int free_netdev (struct net_device*) ;
 int init_completion (int *) ;
 int kfree (char*) ;
 char* kmalloc (unsigned long,int ) ;
 struct sixpack* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int refcount_set (int *,int) ;
 int register_netdev (struct net_device*) ;
 int resync_tnc ;
 int sp_setup ;
 int sp_xmit_on_air ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_setup (int *,int ,int ) ;
 int tnc_init (struct sixpack*) ;

__attribute__((used)) static int sixpack_open(struct tty_struct *tty)
{
 char *rbuff = ((void*)0), *xbuff = ((void*)0);
 struct net_device *dev;
 struct sixpack *sp;
 unsigned long len;
 int err = 0;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;
 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;

 dev = alloc_netdev(sizeof(struct sixpack), "sp%d", NET_NAME_UNKNOWN,
      sp_setup);
 if (!dev) {
  err = -ENOMEM;
  goto out;
 }

 sp = netdev_priv(dev);
 sp->dev = dev;

 spin_lock_init(&sp->lock);
 refcount_set(&sp->refcnt, 1);
 init_completion(&sp->dead);



 len = dev->mtu * 2;

 rbuff = kmalloc(len + 4, GFP_KERNEL);
 xbuff = kmalloc(len + 4, GFP_KERNEL);

 if (rbuff == ((void*)0) || xbuff == ((void*)0)) {
  err = -ENOBUFS;
  goto out_free;
 }

 spin_lock_bh(&sp->lock);

 sp->tty = tty;

 sp->rbuff = rbuff;
 sp->xbuff = xbuff;

 sp->mtu = AX25_MTU + 73;
 sp->buffsize = len;
 sp->rcount = 0;
 sp->rx_count = 0;
 sp->rx_count_cooked = 0;
 sp->xleft = 0;

 sp->flags = 0;

 sp->duplex = 0;
 sp->tx_delay = SIXP_TXDELAY;
 sp->persistence = SIXP_PERSIST;
 sp->slottime = SIXP_SLOTTIME;
 sp->led_state = 0x60;
 sp->status = 1;
 sp->status1 = 1;
 sp->status2 = 0;
 sp->tx_enable = 0;

 netif_start_queue(dev);

 timer_setup(&sp->tx_t, sp_xmit_on_air, 0);

 timer_setup(&sp->resync_t, resync_tnc, 0);

 spin_unlock_bh(&sp->lock);


 tty->disc_data = sp;
 tty->receive_room = 65536;


 err = register_netdev(dev);
 if (err)
  goto out_free;

 tnc_init(sp);

 return 0;

out_free:
 kfree(xbuff);
 kfree(rbuff);

 free_netdev(dev);

out:
 return err;
}
