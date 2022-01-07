
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_hw {scalar_t__ back; } ;
struct i40e_dma_mem {int va; int pa; int size; } ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;

int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
       u64 size, u32 alignment)
{
 struct i40e_pf *pf = (struct i40e_pf *)hw->back;

 mem->size = ALIGN(size, alignment);
 mem->va = dma_alloc_coherent(&pf->pdev->dev, mem->size, &mem->pa,
         GFP_KERNEL);
 if (!mem->va)
  return -ENOMEM;

 return 0;
}
