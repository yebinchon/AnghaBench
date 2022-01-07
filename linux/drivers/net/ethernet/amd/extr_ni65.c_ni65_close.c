
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int ** tmd_skb; } ;
struct net_device {int irq; struct priv* ml_priv; } ;


 scalar_t__ L_RESET ;
 scalar_t__ PORT ;
 int TMDNUM ;
 int dev_kfree_skb (int *) ;
 int free_irq (int ,struct net_device*) ;
 int inw (scalar_t__) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int ni65_close(struct net_device *dev)
{
 struct priv *p = dev->ml_priv;

 netif_stop_queue(dev);

 outw(inw(PORT+L_RESET),PORT+L_RESET);
 free_irq(dev->irq,dev);
 return 0;
}
