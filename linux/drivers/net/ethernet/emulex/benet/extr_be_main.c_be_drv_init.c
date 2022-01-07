
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lancer_cmd_req_pport_stats {int dummy; } ;
struct device {int dummy; } ;
struct be_mcc_mailbox {int dummy; } ;
struct be_dma_mem {int size; void* dma; void* va; } ;
struct be_cmd_req_rx_filter {int dummy; } ;
struct be_cmd_req_get_stats_v2 {int dummy; } ;
struct be_cmd_req_get_stats_v1 {int dummy; } ;
struct be_cmd_req_get_stats_v0 {int dummy; } ;
struct TYPE_3__ {int err_detection_work; scalar_t__ resched_delay; int recovery_state; } ;
struct be_adapter {int rx_fc; int tx_fc; int be_get_temp_freq; int vxlan_port_list; TYPE_1__ error_recovery; int work; TYPE_2__* pdev; int et_cmd_compl; int mcc_cq_lock; int rx_filter_lock; int mcc_lock; int mbox_lock; struct be_dma_mem stats_cmd; struct be_dma_mem rx_filter; struct be_dma_mem mbox_mem; struct be_dma_mem mbox_mem_alloced; } ;
struct TYPE_4__ {struct device dev; } ;


 scalar_t__ BE2_chip (struct be_adapter*) ;
 scalar_t__ BE3_chip (struct be_adapter*) ;
 int ENOMEM ;
 int ERR_RECOVERY_ST_NONE ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 void* PTR_ALIGN (void*,int) ;
 int be_err_detection_task ;
 int be_worker ;
 void* dma_alloc_coherent (struct device*,int,void**,int ) ;
 int dma_free_coherent (struct device*,int,void*,void*) ;
 int init_completion (int *) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int mutex_init (int *) ;
 int pci_save_state (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int be_drv_init(struct be_adapter *adapter)
{
 struct be_dma_mem *mbox_mem_alloc = &adapter->mbox_mem_alloced;
 struct be_dma_mem *mbox_mem_align = &adapter->mbox_mem;
 struct be_dma_mem *rx_filter = &adapter->rx_filter;
 struct be_dma_mem *stats_cmd = &adapter->stats_cmd;
 struct device *dev = &adapter->pdev->dev;
 int status = 0;

 mbox_mem_alloc->size = sizeof(struct be_mcc_mailbox) + 16;
 mbox_mem_alloc->va = dma_alloc_coherent(dev, mbox_mem_alloc->size,
      &mbox_mem_alloc->dma,
      GFP_KERNEL);
 if (!mbox_mem_alloc->va)
  return -ENOMEM;

 mbox_mem_align->size = sizeof(struct be_mcc_mailbox);
 mbox_mem_align->va = PTR_ALIGN(mbox_mem_alloc->va, 16);
 mbox_mem_align->dma = PTR_ALIGN(mbox_mem_alloc->dma, 16);

 rx_filter->size = sizeof(struct be_cmd_req_rx_filter);
 rx_filter->va = dma_alloc_coherent(dev, rx_filter->size,
        &rx_filter->dma, GFP_KERNEL);
 if (!rx_filter->va) {
  status = -ENOMEM;
  goto free_mbox;
 }

 if (lancer_chip(adapter))
  stats_cmd->size = sizeof(struct lancer_cmd_req_pport_stats);
 else if (BE2_chip(adapter))
  stats_cmd->size = sizeof(struct be_cmd_req_get_stats_v0);
 else if (BE3_chip(adapter))
  stats_cmd->size = sizeof(struct be_cmd_req_get_stats_v1);
 else
  stats_cmd->size = sizeof(struct be_cmd_req_get_stats_v2);
 stats_cmd->va = dma_alloc_coherent(dev, stats_cmd->size,
        &stats_cmd->dma, GFP_KERNEL);
 if (!stats_cmd->va) {
  status = -ENOMEM;
  goto free_rx_filter;
 }

 mutex_init(&adapter->mbox_lock);
 mutex_init(&adapter->mcc_lock);
 mutex_init(&adapter->rx_filter_lock);
 spin_lock_init(&adapter->mcc_cq_lock);
 init_completion(&adapter->et_cmd_compl);

 pci_save_state(adapter->pdev);

 INIT_DELAYED_WORK(&adapter->work, be_worker);

 adapter->error_recovery.recovery_state = ERR_RECOVERY_ST_NONE;
 adapter->error_recovery.resched_delay = 0;
 INIT_DELAYED_WORK(&adapter->error_recovery.err_detection_work,
     be_err_detection_task);

 adapter->rx_fc = 1;
 adapter->tx_fc = 1;


 adapter->be_get_temp_freq = 64;

 INIT_LIST_HEAD(&adapter->vxlan_port_list);
 return 0;

free_rx_filter:
 dma_free_coherent(dev, rx_filter->size, rx_filter->va, rx_filter->dma);
free_mbox:
 dma_free_coherent(dev, mbox_mem_alloc->size, mbox_mem_alloc->va,
     mbox_mem_alloc->dma);
 return status;
}
