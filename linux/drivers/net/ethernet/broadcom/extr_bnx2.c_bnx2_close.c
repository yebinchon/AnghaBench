
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2 {int dev; scalar_t__ link_up; int timer; } ;


 int bnx2_del_napi (struct bnx2*) ;
 int bnx2_disable_int_sync (struct bnx2*) ;
 int bnx2_free_irq (struct bnx2*) ;
 int bnx2_free_mem (struct bnx2*) ;
 int bnx2_free_skbs (struct bnx2*) ;
 int bnx2_napi_disable (struct bnx2*) ;
 int bnx2_shutdown_chip (struct bnx2*) ;
 int del_timer_sync (int *) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (struct net_device*) ;

__attribute__((used)) static int
bnx2_close(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);

 bnx2_disable_int_sync(bp);
 bnx2_napi_disable(bp);
 netif_tx_disable(dev);
 del_timer_sync(&bp->timer);
 bnx2_shutdown_chip(bp);
 bnx2_free_irq(bp);
 bnx2_free_skbs(bp);
 bnx2_free_mem(bp);
 bnx2_del_napi(bp);
 bp->link_up = 0;
 netif_carrier_off(bp->dev);
 return 0;
}
