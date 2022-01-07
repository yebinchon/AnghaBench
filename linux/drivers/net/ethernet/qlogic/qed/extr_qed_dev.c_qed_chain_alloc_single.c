
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int qed_chain_init_mem (struct qed_chain*,void*,int ) ;
 int qed_chain_reset (struct qed_chain*) ;

__attribute__((used)) static int
qed_chain_alloc_single(struct qed_dev *cdev, struct qed_chain *p_chain)
{
 dma_addr_t p_phys = 0;
 void *p_virt = ((void*)0);

 p_virt = dma_alloc_coherent(&cdev->pdev->dev,
        QED_CHAIN_PAGE_SIZE, &p_phys, GFP_KERNEL);
 if (!p_virt)
  return -ENOMEM;

 qed_chain_init_mem(p_chain, p_virt, p_phys);
 qed_chain_reset(p_chain);

 return 0;
}
