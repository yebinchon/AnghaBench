
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct i596_private* ml_priv; } ;
struct i596_rbd {int * skb; } ;
struct i596_private {struct i596_rbd* rbds; } ;


 int dev_kfree_skb (int *) ;
 int rx_ring_size ;

__attribute__((used)) static inline void remove_rx_bufs(struct net_device *dev)
{
 struct i596_private *lp = dev->ml_priv;
 struct i596_rbd *rbd;
 int i;

 for (i = 0, rbd = lp->rbds; i < rx_ring_size; i++, rbd++) {
  if (rbd->skb == ((void*)0))
   break;
  dev_kfree_skb(rbd->skb);
  rbd->skb = ((void*)0);
 }
}
