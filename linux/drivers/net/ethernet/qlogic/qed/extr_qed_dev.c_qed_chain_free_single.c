
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain {int p_phys_addr; int p_virt_addr; } ;
struct TYPE_2__ {int dev; } ;


 int QED_CHAIN_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void qed_chain_free_single(struct qed_dev *cdev,
      struct qed_chain *p_chain)
{
 if (!p_chain->p_virt_addr)
  return;

 dma_free_coherent(&cdev->pdev->dev,
     QED_CHAIN_PAGE_SIZE,
     p_chain->p_virt_addr, p_chain->p_phys_addr);
}
