
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int num_hwfns; } ;


 int FEAT_NUM (int ,int ) ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_PF_L2_QUE ;

__attribute__((used)) static int qed_rdma_get_sb_start(struct qed_dev *cdev)
{
 int feat_num;

 if (cdev->num_hwfns > 1)
  feat_num = FEAT_NUM(QED_AFFIN_HWFN(cdev), QED_PF_L2_QUE);
 else
  feat_num = FEAT_NUM(QED_AFFIN_HWFN(cdev), QED_PF_L2_QUE) *
      cdev->num_hwfns;

 return feat_num;
}
