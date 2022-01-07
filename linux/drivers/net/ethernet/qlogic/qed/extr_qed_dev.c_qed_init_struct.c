
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int mutex; } ;
struct qed_hwfn {size_t my_id; int b_active; TYPE_1__ dmae_info; struct qed_dev* cdev; } ;
struct qed_dev {int cache_shift; struct qed_hwfn* hwfns; } ;


 size_t MAX_HWFNS_PER_DEVICE ;
 int mutex_init (int *) ;

void qed_init_struct(struct qed_dev *cdev)
{
 u8 i;

 for (i = 0; i < MAX_HWFNS_PER_DEVICE; i++) {
  struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

  p_hwfn->cdev = cdev;
  p_hwfn->my_id = i;
  p_hwfn->b_active = 0;

  mutex_init(&p_hwfn->dmae_info.mutex);
 }


 cdev->hwfns[0].b_active = 1;


 cdev->cache_shift = 7;
}
