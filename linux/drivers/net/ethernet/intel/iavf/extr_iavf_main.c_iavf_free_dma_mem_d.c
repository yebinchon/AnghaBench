
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_hw {scalar_t__ back; } ;
struct iavf_dma_mem {scalar_t__ pa; int va; int size; } ;
struct iavf_adapter {TYPE_1__* pdev; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int IAVF_ERR_PARAM ;
 int dma_free_coherent (int *,int ,int ,int ) ;

enum iavf_status iavf_free_dma_mem_d(struct iavf_hw *hw,
         struct iavf_dma_mem *mem)
{
 struct iavf_adapter *adapter = (struct iavf_adapter *)hw->back;

 if (!mem || !mem->va)
  return IAVF_ERR_PARAM;
 dma_free_coherent(&adapter->pdev->dev, mem->size,
     mem->va, (dma_addr_t)mem->pa);
 return 0;
}
