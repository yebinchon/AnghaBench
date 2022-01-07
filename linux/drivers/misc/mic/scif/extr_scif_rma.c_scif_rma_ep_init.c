
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_endpt_rma_info {int markwq; int vma_list; int mmn_list; int * dma_chan; scalar_t__ async_list_del; int fence_refcount; int tcw_total_pages; int tcw_refcount; int tw_refcount; int remote_reg_list; int reg_list; int mmn_lock; int tc_lock; int iovad; int rma_lock; } ;
struct scif_endpt {struct scif_endpt_rma_info rma_info; } ;


 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int SCIF_IOVA_START_PFN ;
 int atomic_set (int *,int ) ;
 int init_iova_domain (int *,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void scif_rma_ep_init(struct scif_endpt *ep)
{
 struct scif_endpt_rma_info *rma = &ep->rma_info;

 mutex_init(&rma->rma_lock);
 init_iova_domain(&rma->iovad, PAGE_SIZE, SCIF_IOVA_START_PFN);
 spin_lock_init(&rma->tc_lock);
 mutex_init(&rma->mmn_lock);
 INIT_LIST_HEAD(&rma->reg_list);
 INIT_LIST_HEAD(&rma->remote_reg_list);
 atomic_set(&rma->tw_refcount, 0);
 atomic_set(&rma->tcw_refcount, 0);
 atomic_set(&rma->tcw_total_pages, 0);
 atomic_set(&rma->fence_refcount, 0);

 rma->async_list_del = 0;
 rma->dma_chan = ((void*)0);
 INIT_LIST_HEAD(&rma->mmn_list);
 INIT_LIST_HEAD(&rma->vma_list);
 init_waitqueue_head(&rma->markwq);
}
