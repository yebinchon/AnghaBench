
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_hw {scalar_t__ back; } ;
struct i40e_dma_mem {int size; int pa; int * va; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
{
 struct i40e_pf *pf = (struct i40e_pf *)hw->back;

 dma_free_coherent(&pf->pdev->dev, mem->size, mem->va, mem->pa);
 mem->va = ((void*)0);
 mem->pa = 0;
 mem->size = 0;

 return 0;
}
