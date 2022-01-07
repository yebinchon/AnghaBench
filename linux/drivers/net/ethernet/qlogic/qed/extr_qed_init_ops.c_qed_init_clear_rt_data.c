
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* b_valid; } ;
struct qed_hwfn {TYPE_1__ rt_data; } ;


 int RUNTIME_ARRAY_SIZE ;

void qed_init_clear_rt_data(struct qed_hwfn *p_hwfn)
{
 int i;

 for (i = 0; i < RUNTIME_ARRAY_SIZE; i++)
  p_hwfn->rt_data.b_valid[i] = 0;
}
