
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_spq_entry {int list; } ;
struct qed_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int free_pool; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void __qed_spq_return_entry(struct qed_hwfn *p_hwfn,
       struct qed_spq_entry *p_ent)
{
 list_add_tail(&p_ent->list, &p_hwfn->p_spq->free_pool);
}
