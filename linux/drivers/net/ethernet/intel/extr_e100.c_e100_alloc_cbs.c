
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int count; } ;
struct TYPE_4__ {TYPE_1__ cbs; } ;
struct nic {unsigned int cbs_avail; struct cb* cbs; struct cb* cb_to_clean; struct cb* cb_to_send; struct cb* cb_to_use; scalar_t__ cbs_dma_addr; int cbs_pool; int cuc_cmd; TYPE_2__ params; } ;
struct cb {int link; scalar_t__ dma_addr; struct cb* prev; struct cb* next; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (scalar_t__) ;
 int cuc_start ;
 struct cb* dma_pool_zalloc (int ,int ,scalar_t__*) ;

__attribute__((used)) static int e100_alloc_cbs(struct nic *nic)
{
 struct cb *cb;
 unsigned int i, count = nic->params.cbs.count;

 nic->cuc_cmd = cuc_start;
 nic->cb_to_use = nic->cb_to_send = nic->cb_to_clean = ((void*)0);
 nic->cbs_avail = 0;

 nic->cbs = dma_pool_zalloc(nic->cbs_pool, GFP_KERNEL,
       &nic->cbs_dma_addr);
 if (!nic->cbs)
  return -ENOMEM;

 for (cb = nic->cbs, i = 0; i < count; cb++, i++) {
  cb->next = (i + 1 < count) ? cb + 1 : nic->cbs;
  cb->prev = (i == 0) ? nic->cbs + count - 1 : cb - 1;

  cb->dma_addr = nic->cbs_dma_addr + i * sizeof(struct cb);
  cb->link = cpu_to_le32(nic->cbs_dma_addr +
   ((i+1) % count) * sizeof(struct cb));
 }

 nic->cb_to_use = nic->cb_to_send = nic->cb_to_clean = nic->cbs;
 nic->cbs_avail = count;

 return 0;
}
