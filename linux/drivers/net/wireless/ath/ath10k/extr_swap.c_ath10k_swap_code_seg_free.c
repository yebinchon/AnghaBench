
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct ath10k_swap_code_seg_info {int * paddr; int * virt_address; TYPE_1__ seg_hw_info; } ;
struct ath10k {int dev; } ;


 int __le32_to_cpu (int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void
ath10k_swap_code_seg_free(struct ath10k *ar,
     struct ath10k_swap_code_seg_info *seg_info)
{
 u32 seg_size;

 if (!seg_info)
  return;

 if (!seg_info->virt_address[0])
  return;

 seg_size = __le32_to_cpu(seg_info->seg_hw_info.size);
 dma_free_coherent(ar->dev, seg_size, seg_info->virt_address[0],
     seg_info->paddr[0]);
}
