
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_simd_fp_handler {int dummy; } ;
struct qed_hwfn {int * simd_proto_handler; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void qed_simd_handler_clean(struct qed_dev *cdev, int index)
{
 struct qed_hwfn *hwfn = &cdev->hwfns[index % cdev->num_hwfns];
 int relative_idx = index / cdev->num_hwfns;

 memset(&hwfn->simd_proto_handler[relative_idx], 0,
        sizeof(struct qed_simd_fp_handler));
}
