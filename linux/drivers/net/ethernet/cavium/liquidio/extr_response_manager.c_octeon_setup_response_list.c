
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct octeon_device* ctxptr; int work; } ;
struct cavium_wq {TYPE_3__ wk; int wq; } ;
struct octeon_device {int cmd_resp_state; struct cavium_wq dma_comp_wq; TYPE_2__* pci_dev; int cmd_resp_wqlock; TYPE_1__* response_list; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int pending_req_count; int lock; int head; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_RESPONSE_LISTS ;
 int OCT_DRV_ONLINE ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int oct_poll_req_completion ;
 int spin_lock_init (int *) ;

int octeon_setup_response_list(struct octeon_device *oct)
{
 int i, ret = 0;
 struct cavium_wq *cwq;

 for (i = 0; i < MAX_RESPONSE_LISTS; i++) {
  INIT_LIST_HEAD(&oct->response_list[i].head);
  spin_lock_init(&oct->response_list[i].lock);
  atomic_set(&oct->response_list[i].pending_req_count, 0);
 }
 spin_lock_init(&oct->cmd_resp_wqlock);

 oct->dma_comp_wq.wq = alloc_workqueue("dma-comp", WQ_MEM_RECLAIM, 0);
 if (!oct->dma_comp_wq.wq) {
  dev_err(&oct->pci_dev->dev, "failed to create wq thread\n");
  return -ENOMEM;
 }

 cwq = &oct->dma_comp_wq;
 INIT_DELAYED_WORK(&cwq->wk.work, oct_poll_req_completion);
 cwq->wk.ctxptr = oct;
 oct->cmd_resp_state = OCT_DRV_ONLINE;

 return ret;
}
