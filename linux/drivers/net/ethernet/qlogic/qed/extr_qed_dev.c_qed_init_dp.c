
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef size_t u32 ;
struct qed_hwfn {size_t dp_module; void* dp_level; } ;
struct qed_dev {size_t dp_module; struct qed_hwfn* hwfns; void* dp_level; } ;


 size_t MAX_HWFNS_PER_DEVICE ;

void qed_init_dp(struct qed_dev *cdev, u32 dp_module, u8 dp_level)
{
 u32 i;

 cdev->dp_level = dp_level;
 cdev->dp_module = dp_module;
 for (i = 0; i < MAX_HWFNS_PER_DEVICE; i++) {
  struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

  p_hwfn->dp_level = dp_level;
  p_hwfn->dp_module = dp_module;
 }
}
