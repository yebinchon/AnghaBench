
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
struct qed_dev_iscsi_info {int num_cqs; int secondary_bdq_rq_addr; int primary_dbq_rq_addr; int common; } ;
struct qed_dev {int dummy; } ;


 int BDQ_ID_RQ ;
 int FEAT_NUM (struct qed_hwfn*,int ) ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_ISCSI_CQ ;
 int memset (struct qed_dev_iscsi_info*,int ,int) ;
 int qed_fill_dev_info (struct qed_dev*,int *) ;
 int qed_iscsi_get_primary_bdq_prod (struct qed_hwfn*,int ) ;
 int qed_iscsi_get_secondary_bdq_prod (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_fill_iscsi_dev_info(struct qed_dev *cdev,
       struct qed_dev_iscsi_info *info)
{
 struct qed_hwfn *hwfn = QED_AFFIN_HWFN(cdev);

 int rc;

 memset(info, 0, sizeof(*info));
 rc = qed_fill_dev_info(cdev, &info->common);

 info->primary_dbq_rq_addr =
     qed_iscsi_get_primary_bdq_prod(hwfn, BDQ_ID_RQ);
 info->secondary_bdq_rq_addr =
     qed_iscsi_get_secondary_bdq_prod(hwfn, BDQ_ID_RQ);

 info->num_cqs = FEAT_NUM(hwfn, QED_ISCSI_CQ);

 return rc;
}
