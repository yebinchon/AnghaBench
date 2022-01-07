
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int oom_timer; int napi; int ndev; } ;


 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_rings_cleanup (struct ag71xx*) ;
 int del_timer_sync (int *) ;
 int napi_disable (int *) ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static void ag71xx_hw_disable(struct ag71xx *ag)
{
 netif_stop_queue(ag->ndev);

 ag71xx_hw_stop(ag);
 ag71xx_dma_reset(ag);

 napi_disable(&ag->napi);
 del_timer_sync(&ag->oom_timer);

 ag71xx_rings_cleanup(ag);
}
