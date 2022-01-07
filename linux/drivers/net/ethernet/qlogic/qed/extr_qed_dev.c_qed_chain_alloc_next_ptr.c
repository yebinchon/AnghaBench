
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain {scalar_t__ page_cnt; void* p_virt_addr; int p_phys_addr; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int qed_chain_init_mem (struct qed_chain*,void*,int ) ;
 int qed_chain_init_next_ptr_elem (struct qed_chain*,void*,void*,int ) ;
 int qed_chain_reset (struct qed_chain*) ;

__attribute__((used)) static int
qed_chain_alloc_next_ptr(struct qed_dev *cdev, struct qed_chain *p_chain)
{
 void *p_virt = ((void*)0), *p_virt_prev = ((void*)0);
 dma_addr_t p_phys = 0;
 u32 i;

 for (i = 0; i < p_chain->page_cnt; i++) {
  p_virt = dma_alloc_coherent(&cdev->pdev->dev,
         QED_CHAIN_PAGE_SIZE,
         &p_phys, GFP_KERNEL);
  if (!p_virt)
   return -ENOMEM;

  if (i == 0) {
   qed_chain_init_mem(p_chain, p_virt, p_phys);
   qed_chain_reset(p_chain);
  } else {
   qed_chain_init_next_ptr_elem(p_chain, p_virt_prev,
           p_virt, p_phys);
  }

  p_virt_prev = p_virt;
 }



 qed_chain_init_next_ptr_elem(p_chain, p_virt_prev,
         p_chain->p_virt_addr,
         p_chain->p_phys_addr);

 return 0;
}
