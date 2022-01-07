
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nic {int netdev; int watchdog; TYPE_1__* pdev; int napi; } ;
struct TYPE_2__ {int irq; } ;


 int del_timer_sync (int *) ;
 int e100_clean_cbs (struct nic*) ;
 int e100_hw_reset (struct nic*) ;
 int e100_rx_clean_list (struct nic*) ;
 int free_irq (int ,int ) ;
 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static void e100_down(struct nic *nic)
{

 napi_disable(&nic->napi);
 netif_stop_queue(nic->netdev);
 e100_hw_reset(nic);
 free_irq(nic->pdev->irq, nic->netdev);
 del_timer_sync(&nic->watchdog);
 netif_carrier_off(nic->netdev);
 e100_clean_cbs(nic);
 e100_rx_clean_list(nic);
}
