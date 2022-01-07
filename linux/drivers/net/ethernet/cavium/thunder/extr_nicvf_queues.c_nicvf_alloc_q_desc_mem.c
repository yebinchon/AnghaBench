
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct q_desc_mem {int q_len; int size; scalar_t__ dma; scalar_t__ phys_base; scalar_t__ unalign_base; scalar_t__ base; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NICVF_ALIGNED_ADDR (int ,int) ;
 scalar_t__ dma_alloc_coherent (int *,int,scalar_t__*,int ) ;

__attribute__((used)) static int nicvf_alloc_q_desc_mem(struct nicvf *nic, struct q_desc_mem *dmem,
      int q_len, int desc_size, int align_bytes)
{
 dmem->q_len = q_len;
 dmem->size = (desc_size * q_len) + align_bytes;

 dmem->unalign_base = dma_alloc_coherent(&nic->pdev->dev, dmem->size,
      &dmem->dma, GFP_KERNEL);
 if (!dmem->unalign_base)
  return -ENOMEM;


 dmem->phys_base = NICVF_ALIGNED_ADDR((u64)dmem->dma, align_bytes);
 dmem->base = dmem->unalign_base + (dmem->phys_base - dmem->dma);
 return 0;
}
