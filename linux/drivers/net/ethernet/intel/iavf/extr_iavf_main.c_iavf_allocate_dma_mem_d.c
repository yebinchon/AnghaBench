
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct iavf_hw {scalar_t__ back; } ;
struct iavf_dma_mem {scalar_t__ va; int pa; int size; } ;
struct iavf_adapter {TYPE_1__* pdev; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int ,int ) ;
 int GFP_KERNEL ;
 int IAVF_ERR_NO_MEMORY ;
 int IAVF_ERR_PARAM ;
 scalar_t__ dma_alloc_coherent (int *,int ,int *,int ) ;

enum iavf_status iavf_allocate_dma_mem_d(struct iavf_hw *hw,
      struct iavf_dma_mem *mem,
      u64 size, u32 alignment)
{
 struct iavf_adapter *adapter = (struct iavf_adapter *)hw->back;

 if (!mem)
  return IAVF_ERR_PARAM;

 mem->size = ALIGN(size, alignment);
 mem->va = dma_alloc_coherent(&adapter->pdev->dev, mem->size,
         (dma_addr_t *)&mem->pa, GFP_KERNEL);
 if (mem->va)
  return 0;
 else
  return IAVF_ERR_NO_MEMORY;
}
