
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ptt {int list_entry; } ;
struct qed_hwfn {TYPE_1__* p_ptt_pool; } ;
struct TYPE_2__ {int lock; int free_list; } ;


 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void qed_ptt_release(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 spin_lock_bh(&p_hwfn->p_ptt_pool->lock);
 list_add(&p_ptt->list_entry, &p_hwfn->p_ptt_pool->free_list);
 spin_unlock_bh(&p_hwfn->p_ptt_pool->lock);
}
