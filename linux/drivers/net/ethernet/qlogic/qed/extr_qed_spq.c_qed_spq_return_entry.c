
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_spq_entry {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int lock; } ;


 int __qed_spq_return_entry (struct qed_hwfn*,struct qed_spq_entry*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void qed_spq_return_entry(struct qed_hwfn *p_hwfn, struct qed_spq_entry *p_ent)
{
 spin_lock_bh(&p_hwfn->p_spq->lock);
 __qed_spq_return_entry(p_hwfn, p_ent);
 spin_unlock_bh(&p_hwfn->p_spq->lock);
}
