
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_dev {int dummy; } ;


 int QED_AFFIN_HWFN_IDX (struct qed_dev*) ;

__attribute__((used)) static u8 qed_get_affin_hwfn_idx(struct qed_dev *cdev)
{
 return QED_AFFIN_HWFN_IDX(cdev);
}
