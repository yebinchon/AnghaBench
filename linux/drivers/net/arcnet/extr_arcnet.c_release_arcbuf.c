
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct arcnet_local {int* buf_queue; int first_free_buf; int next_buf; } ;


 scalar_t__ BUGLVL (int ) ;
 int D_DURING ;
 int arc_cont (int ,char*,...) ;
 int arc_printk (int ,struct net_device*,char*,int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void release_arcbuf(struct net_device *dev, int bufnum)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int i;

 lp->buf_queue[lp->first_free_buf++] = bufnum;
 lp->first_free_buf %= 5;

 if (BUGLVL(D_DURING)) {
  arc_printk(D_DURING, dev, "release_arcbuf: freed #%d; buffer queue is now: ",
      bufnum);
  for (i = lp->next_buf; i != lp->first_free_buf; i = (i + 1) % 5)
   arc_cont(D_DURING, "#%d ", lp->buf_queue[i]);
  arc_cont(D_DURING, "\n");
 }
}
