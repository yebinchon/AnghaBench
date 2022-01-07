
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_l2_info; } ;
struct TYPE_2__ {int lock; } ;


 int QED_IS_L2_PERSONALITY (struct qed_hwfn*) ;
 int mutex_init (int *) ;

void qed_l2_setup(struct qed_hwfn *p_hwfn)
{
 if (!QED_IS_L2_PERSONALITY(p_hwfn))
  return;

 mutex_init(&p_hwfn->p_l2_info->lock);
}
