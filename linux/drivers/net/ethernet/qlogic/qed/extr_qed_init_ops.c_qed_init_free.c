
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * b_valid; int * init_val; } ;
struct qed_hwfn {TYPE_1__ rt_data; } ;


 int kfree (int *) ;

void qed_init_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->rt_data.init_val);
 p_hwfn->rt_data.init_val = ((void*)0);
 kfree(p_hwfn->rt_data.b_valid);
 p_hwfn->rt_data.b_valid = ((void*)0);
}
