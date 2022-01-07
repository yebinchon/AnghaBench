
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_ll2_info; } ;
struct TYPE_2__ {int mutex; } ;


 int QED_MAX_NUM_OF_LL2_CONNECTIONS ;
 int mutex_init (int *) ;

void qed_ll2_setup(struct qed_hwfn *p_hwfn)
{
 int i;

 for (i = 0; i < QED_MAX_NUM_OF_LL2_CONNECTIONS; i++)
  mutex_init(&p_hwfn->p_ll2_info[i].mutex);
}
