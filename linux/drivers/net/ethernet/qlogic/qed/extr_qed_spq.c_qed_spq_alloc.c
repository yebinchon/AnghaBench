
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct slow_path_element {int dummy; } ;
struct qed_spq_entry {int dummy; } ;
struct qed_spq {int chain; int p_phys; struct qed_spq_entry* p_virt; } ;
struct qed_hwfn {TYPE_2__* cdev; struct qed_spq* p_spq; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_SINGLE ;
 int QED_CHAIN_USE_TO_PRODUCE ;
 struct qed_spq_entry* dma_alloc_coherent (int *,int,int *,int ) ;
 int kfree (struct qed_spq*) ;
 struct qed_spq* kzalloc (int,int ) ;
 scalar_t__ qed_chain_alloc (TYPE_2__*,int ,int ,int ,int ,int,int *,int *) ;
 int qed_chain_free (TYPE_2__*,int *) ;
 int qed_chain_get_capacity (int *) ;

int qed_spq_alloc(struct qed_hwfn *p_hwfn)
{
 struct qed_spq_entry *p_virt = ((void*)0);
 struct qed_spq *p_spq = ((void*)0);
 dma_addr_t p_phys = 0;
 u32 capacity;


 p_spq = kzalloc(sizeof(struct qed_spq), GFP_KERNEL);
 if (!p_spq)
  return -ENOMEM;


 if (qed_chain_alloc(p_hwfn->cdev,
       QED_CHAIN_USE_TO_PRODUCE,
       QED_CHAIN_MODE_SINGLE,
       QED_CHAIN_CNT_TYPE_U16,
       0,
       sizeof(struct slow_path_element),
       &p_spq->chain, ((void*)0)))
  goto spq_allocate_fail;


 capacity = qed_chain_get_capacity(&p_spq->chain);
 p_virt = dma_alloc_coherent(&p_hwfn->cdev->pdev->dev,
        capacity * sizeof(struct qed_spq_entry),
        &p_phys, GFP_KERNEL);
 if (!p_virt)
  goto spq_allocate_fail;

 p_spq->p_virt = p_virt;
 p_spq->p_phys = p_phys;
 p_hwfn->p_spq = p_spq;

 return 0;

spq_allocate_fail:
 qed_chain_free(p_hwfn->cdev, &p_spq->chain);
 kfree(p_spq);
 return -ENOMEM;
}
