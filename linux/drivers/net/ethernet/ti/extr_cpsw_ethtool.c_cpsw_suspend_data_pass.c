
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int dma; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {struct net_device* ndev; } ;


 int cpdma_ctlr_stop (int ) ;
 int cpsw_intr_disable (struct cpsw_common*) ;
 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void cpsw_suspend_data_pass(struct net_device *ndev)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);
 int i;


 cpsw_intr_disable(cpsw);



 for (i = 0; i < cpsw->data.slaves; i++) {
  ndev = cpsw->slaves[i].ndev;
  if (!(ndev && netif_running(ndev)))
   continue;

  netif_tx_stop_all_queues(ndev);


  smp_mb__after_atomic();
 }


 cpdma_ctlr_stop(cpsw->dma);
}
