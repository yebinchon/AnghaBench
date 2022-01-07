
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {scalar_t__ db_bar_no_edpm; } ;
struct qed_dev_rdma_info {int user_dpm_enabled; int common; int rdma_type; } ;
struct qed_dev {int dummy; } ;


 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 scalar_t__ QED_IS_ROCE_PERSONALITY (struct qed_hwfn*) ;
 int QED_RDMA_TYPE_IWARP ;
 int QED_RDMA_TYPE_ROCE ;
 int memset (struct qed_dev_rdma_info*,int ,int) ;
 int qed_fill_dev_info (struct qed_dev*,int *) ;

__attribute__((used)) static int qed_fill_rdma_dev_info(struct qed_dev *cdev,
      struct qed_dev_rdma_info *info)
{
 struct qed_hwfn *p_hwfn = QED_AFFIN_HWFN(cdev);

 memset(info, 0, sizeof(*info));

 info->rdma_type = QED_IS_ROCE_PERSONALITY(p_hwfn) ?
     QED_RDMA_TYPE_ROCE : QED_RDMA_TYPE_IWARP;

 info->user_dpm_enabled = (p_hwfn->db_bar_no_edpm == 0);

 qed_fill_dev_info(cdev, &info->common);

 return 0;
}
