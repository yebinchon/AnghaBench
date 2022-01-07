
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_asy {unsigned char* xbuff; int xleft; unsigned char* xhead; unsigned char* rbuff; int rcount; int buffsize; int lock; int flags; } ;
struct TYPE_2__ {int rx_over_errors; int tx_dropped; } ;
struct net_device {int mtu; TYPE_1__ stats; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SLF_ERROR ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned char* xchg (unsigned char**,unsigned char*) ;

__attribute__((used)) static int x25_asy_change_mtu(struct net_device *dev, int newmtu)
{
 struct x25_asy *sl = netdev_priv(dev);
 unsigned char *xbuff, *rbuff;
 int len;

 len = 2 * newmtu;
 xbuff = kmalloc(len + 4, GFP_ATOMIC);
 rbuff = kmalloc(len + 4, GFP_ATOMIC);

 if (xbuff == ((void*)0) || rbuff == ((void*)0)) {
  kfree(xbuff);
  kfree(rbuff);
  return -ENOMEM;
 }

 spin_lock_bh(&sl->lock);
 xbuff = xchg(&sl->xbuff, xbuff);
 if (sl->xleft) {
  if (sl->xleft <= len) {
   memcpy(sl->xbuff, sl->xhead, sl->xleft);
  } else {
   sl->xleft = 0;
   dev->stats.tx_dropped++;
  }
 }
 sl->xhead = sl->xbuff;

 rbuff = xchg(&sl->rbuff, rbuff);
 if (sl->rcount) {
  if (sl->rcount <= len) {
   memcpy(sl->rbuff, rbuff, sl->rcount);
  } else {
   sl->rcount = 0;
   dev->stats.rx_over_errors++;
   set_bit(SLF_ERROR, &sl->flags);
  }
 }

 dev->mtu = newmtu;
 sl->buffsize = len;

 spin_unlock_bh(&sl->lock);

 kfree(xbuff);
 kfree(rbuff);
 return 0;
}
