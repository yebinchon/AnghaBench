
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_eq; } ;
struct TYPE_2__ {int chain; } ;


 int qed_chain_reset (int *) ;

void qed_eq_setup(struct qed_hwfn *p_hwfn)
{
 qed_chain_reset(&p_hwfn->p_eq->chain);
}
