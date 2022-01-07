
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct queue_set {int rbdr_cnt; int cq_cnt; } ;
struct nicvf_cq_poll {int napi; } ;
struct nicvf {int link_up; int sqs_count; int num_vec; struct nicvf* pnicvf; int * ptp_skb; struct nicvf_cq_poll** napi; struct queue_set* qs; int rbdr_work; scalar_t__ rb_work_scheduled; int qs_err_task; int rbdr_task; int pdev; TYPE_2__** snicvf; int sqs_mode; int netdev; scalar_t__ nicvf_rx_mode_wq; int link_change_work; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {struct net_device* netdev; } ;


 int NICVF_INTR_CQ ;
 int NICVF_INTR_MBOX ;
 int NICVF_INTR_QS_ERR ;
 int NICVF_INTR_RBDR ;
 int NIC_MBOX_MSG_SHUTDOWN ;
 int cancel_delayed_work_sync (int *) ;
 int dev_kfree_skb_any (int *) ;
 int drain_workqueue (scalar_t__) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int netdev_get_tx_queue (struct net_device*,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int netdev_tx_reset_queue (int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_del (int *) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (int ) ;
 int nicvf_clear_intr (struct nicvf*,int ,int) ;
 int nicvf_config_data_transfer (struct nicvf*,int) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_free_cq_poll (struct nicvf*) ;
 int nicvf_qset_config (struct nicvf*,int) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;
 int nicvf_unregister_interrupts (struct nicvf*) ;
 int pci_irq_vector (int ,int) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

int nicvf_stop(struct net_device *netdev)
{
 int irq, qidx;
 struct nicvf *nic = netdev_priv(netdev);
 struct queue_set *qs = nic->qs;
 struct nicvf_cq_poll *cq_poll = ((void*)0);
 union nic_mbx mbx = {};


 if (nic->nicvf_rx_mode_wq) {
  cancel_delayed_work_sync(&nic->link_change_work);
  drain_workqueue(nic->nicvf_rx_mode_wq);
 }

 mbx.msg.msg = NIC_MBOX_MSG_SHUTDOWN;
 nicvf_send_msg_to_pf(nic, &mbx);

 netif_carrier_off(netdev);
 netif_tx_stop_all_queues(nic->netdev);
 nic->link_up = 0;


 if (!nic->sqs_mode) {
  for (qidx = 0; qidx < nic->sqs_count; qidx++) {
   if (!nic->snicvf[qidx])
    continue;
   nicvf_stop(nic->snicvf[qidx]->netdev);
   nic->snicvf[qidx] = ((void*)0);
  }
 }


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
  nicvf_disable_intr(nic, NICVF_INTR_RBDR, qidx);
  nicvf_clear_intr(nic, NICVF_INTR_RBDR, qidx);
 }
 nicvf_disable_intr(nic, NICVF_INTR_QS_ERR, 0);
 nicvf_clear_intr(nic, NICVF_INTR_QS_ERR, 0);


 for (irq = 0; irq < nic->num_vec; irq++)
  synchronize_irq(pci_irq_vector(nic->pdev, irq));

 tasklet_kill(&nic->rbdr_task);
 tasklet_kill(&nic->qs_err_task);
 if (nic->rb_work_scheduled)
  cancel_delayed_work_sync(&nic->rbdr_work);

 for (qidx = 0; qidx < nic->qs->cq_cnt; qidx++) {
  cq_poll = nic->napi[qidx];
  if (!cq_poll)
   continue;
  napi_synchronize(&cq_poll->napi);



  nicvf_disable_intr(nic, NICVF_INTR_CQ, qidx);
  nicvf_clear_intr(nic, NICVF_INTR_CQ, qidx);
  napi_disable(&cq_poll->napi);
  netif_napi_del(&cq_poll->napi);
 }

 netif_tx_disable(netdev);

 for (qidx = 0; qidx < netdev->num_tx_queues; qidx++)
  netdev_tx_reset_queue(netdev_get_tx_queue(netdev, qidx));


 nicvf_config_data_transfer(nic, 0);


 nicvf_qset_config(nic, 0);


 nicvf_disable_intr(nic, NICVF_INTR_MBOX, 0);

 nicvf_unregister_interrupts(nic);

 nicvf_free_cq_poll(nic);


 if (nic->ptp_skb) {
  dev_kfree_skb_any(nic->ptp_skb);
  nic->ptp_skb = ((void*)0);
 }


 nic->pnicvf = nic;

 return 0;
}
