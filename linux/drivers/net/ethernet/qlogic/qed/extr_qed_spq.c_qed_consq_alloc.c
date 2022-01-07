
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {struct qed_consq* p_consq; int cdev; } ;
struct qed_consq {int chain; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_PAGE_SIZE ;
 int QED_CHAIN_USE_TO_PRODUCE ;
 int kfree (struct qed_consq*) ;
 struct qed_consq* kzalloc (int,int ) ;
 scalar_t__ qed_chain_alloc (int ,int ,int ,int ,int,int,int *,int *) ;

int qed_consq_alloc(struct qed_hwfn *p_hwfn)
{
 struct qed_consq *p_consq;


 p_consq = kzalloc(sizeof(*p_consq), GFP_KERNEL);
 if (!p_consq)
  return -ENOMEM;


 if (qed_chain_alloc(p_hwfn->cdev,
       QED_CHAIN_USE_TO_PRODUCE,
       QED_CHAIN_MODE_PBL,
       QED_CHAIN_CNT_TYPE_U16,
       QED_CHAIN_PAGE_SIZE / 0x80,
       0x80, &p_consq->chain, ((void*)0)))
  goto consq_allocate_fail;

 p_hwfn->p_consq = p_consq;
 return 0;

consq_allocate_fail:
 kfree(p_consq);
 return -ENOMEM;
}
