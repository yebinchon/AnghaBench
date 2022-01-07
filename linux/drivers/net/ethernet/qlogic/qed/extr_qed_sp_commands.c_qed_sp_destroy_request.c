
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_spq_entry {int * queue; } ;
struct qed_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int unlimited_pending; } ;


 int kfree (struct qed_spq_entry*) ;
 int qed_spq_return_entry (struct qed_hwfn*,struct qed_spq_entry*) ;

void qed_sp_destroy_request(struct qed_hwfn *p_hwfn,
       struct qed_spq_entry *p_ent)
{




 if (p_ent->queue == &p_hwfn->p_spq->unlimited_pending)
  kfree(p_ent);
 else
  qed_spq_return_entry(p_hwfn, p_ent);
}
