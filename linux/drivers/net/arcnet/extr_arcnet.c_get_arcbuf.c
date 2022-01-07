
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int counter; } ;
struct arcnet_local {int next_buf; int first_free_buf; int* buf_queue; TYPE_1__ buf_lock; } ;


 scalar_t__ BUGLVL (int ) ;
 int D_DURING ;
 int D_NORMAL ;
 int arc_cont (int ,char*,...) ;
 int arc_printk (int ,struct net_device*,char*,...) ;
 int atomic_dec_and_test (TYPE_1__*) ;
 int atomic_inc (TYPE_1__*) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int get_arcbuf(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int buf = -1, i;

 if (!atomic_dec_and_test(&lp->buf_lock)) {

  arc_printk(D_NORMAL, dev, "get_arcbuf: overlap (%d)!\n",
      lp->buf_lock.counter);
 } else {
  if (lp->next_buf >= 5)
   lp->next_buf -= 5;

  if (lp->next_buf == lp->first_free_buf) {
   arc_printk(D_NORMAL, dev, "get_arcbuf: BUG: no buffers are available??\n");
  } else {
   buf = lp->buf_queue[lp->next_buf++];
   lp->next_buf %= 5;
  }
 }

 if (BUGLVL(D_DURING)) {
  arc_printk(D_DURING, dev, "get_arcbuf: got #%d; buffer queue is now: ",
      buf);
  for (i = lp->next_buf; i != lp->first_free_buf; i = (i + 1) % 5)
   arc_cont(D_DURING, "#%d ", lp->buf_queue[i]);
  arc_cont(D_DURING, "\n");
 }

 atomic_inc(&lp->buf_lock);
 return buf;
}
