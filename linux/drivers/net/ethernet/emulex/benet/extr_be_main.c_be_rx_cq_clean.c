
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_queue_info {int id; } ;
struct be_rx_obj {struct be_adapter* adapter; struct be_queue_info cq; } ;
struct be_rx_compl_info {scalar_t__ num_rcvd; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BE_ERROR_HW ;
 scalar_t__ be_check_error (struct be_adapter*,int ) ;
 int be_cq_notify (struct be_adapter*,int ,int,int) ;
 int be_rx_compl_discard (struct be_rx_obj*,struct be_rx_compl_info*) ;
 struct be_rx_compl_info* be_rx_compl_get (struct be_rx_obj*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int mdelay (int) ;

__attribute__((used)) static void be_rx_cq_clean(struct be_rx_obj *rxo)
{
 struct be_queue_info *rx_cq = &rxo->cq;
 struct be_rx_compl_info *rxcp;
 struct be_adapter *adapter = rxo->adapter;
 int flush_wait = 0;







 for (;;) {
  rxcp = be_rx_compl_get(rxo);
  if (!rxcp) {
   if (lancer_chip(adapter))
    break;

   if (flush_wait++ > 50 ||
       be_check_error(adapter,
        BE_ERROR_HW)) {
    dev_warn(&adapter->pdev->dev,
      "did not receive flush compl\n");
    break;
   }
   be_cq_notify(adapter, rx_cq->id, 1, 0);
   mdelay(1);
  } else {
   be_rx_compl_discard(rxo, rxcp);
   be_cq_notify(adapter, rx_cq->id, 0, 1);
   if (rxcp->num_rcvd == 0)
    break;
  }
 }


 be_cq_notify(adapter, rx_cq->id, 0, 0);
}
