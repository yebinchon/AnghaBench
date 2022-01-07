
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_consq; int cdev; } ;
struct TYPE_2__ {int chain; } ;


 int kfree (TYPE_1__*) ;
 int qed_chain_free (int ,int *) ;

void qed_consq_free(struct qed_hwfn *p_hwfn)
{
 if (!p_hwfn->p_consq)
  return;

 qed_chain_free(p_hwfn->cdev, &p_hwfn->p_consq->chain);

 kfree(p_hwfn->p_consq);
 p_hwfn->p_consq = ((void*)0);
}
