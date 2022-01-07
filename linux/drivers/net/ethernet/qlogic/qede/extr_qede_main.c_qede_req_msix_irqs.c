
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qede_fastpath {int type; int name; } ;
struct TYPE_6__ {int msix_cnt; int used_cnt; TYPE_2__* msix; } ;
struct qede_dev {TYPE_3__ int_info; struct qede_fastpath* fp_array; TYPE_1__* ndev; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {scalar_t__ rx_cpu_rmap; } ;


 int DP_ERR (struct qede_dev*,char*,...) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,int,struct qede_fastpath*) ;
 int EINVAL ;
 int NETIF_MSG_INTR ;
 int QEDE_FASTPATH_RX ;
 int QEDE_QUEUE_CNT (struct qede_dev*) ;
 int irq_cpu_rmap_add (scalar_t__,int ) ;
 int qede_free_arfs (struct qede_dev*) ;
 int qede_msix_fp_int ;
 int qede_sync_free_irqs (struct qede_dev*) ;
 int request_irq (int ,int ,int ,int ,struct qede_fastpath*) ;

__attribute__((used)) static int qede_req_msix_irqs(struct qede_dev *edev)
{
 int i, rc;


 if (QEDE_QUEUE_CNT(edev) > edev->int_info.msix_cnt) {
  DP_ERR(edev,
         "Interrupt mismatch: %d RSS queues > %d MSI-x vectors\n",
         QEDE_QUEUE_CNT(edev), edev->int_info.msix_cnt);
  return -EINVAL;
 }

 for (i = 0; i < QEDE_QUEUE_CNT(edev); i++) {
  rc = request_irq(edev->int_info.msix[i].vector,
     qede_msix_fp_int, 0, edev->fp_array[i].name,
     &edev->fp_array[i]);
  if (rc) {
   DP_ERR(edev, "Request fp %d irq failed\n", i);
   qede_sync_free_irqs(edev);
   return rc;
  }
  DP_VERBOSE(edev, NETIF_MSG_INTR,
      "Requested fp irq for %s [entry %d]. Cookie is at %p\n",
      edev->fp_array[i].name, i,
      &edev->fp_array[i]);
  edev->int_info.used_cnt++;
 }

 return 0;
}
