
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_2__* mcp_info; } ;
struct qed_dev_fcoe_info {int num_cqs; int wwnn; int wwpn; int secondary_bdq_rq_addr; int primary_dbq_rq_addr; int common; } ;
struct qed_dev {int dummy; } ;
struct TYPE_3__ {int wwn_node; int wwn_port; } ;
struct TYPE_4__ {TYPE_1__ func_info; } ;


 int BDQ_ID_RQ ;
 int FEAT_NUM (struct qed_hwfn*,int ) ;
 struct qed_hwfn* QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_FCOE_CQ ;
 int memset (struct qed_dev_fcoe_info*,int ,int) ;
 int qed_fcoe_get_primary_bdq_prod (struct qed_hwfn*,int ) ;
 int qed_fcoe_get_secondary_bdq_prod (struct qed_hwfn*,int ) ;
 int qed_fill_dev_info (struct qed_dev*,int *) ;

__attribute__((used)) static int qed_fill_fcoe_dev_info(struct qed_dev *cdev,
      struct qed_dev_fcoe_info *info)
{
 struct qed_hwfn *hwfn = QED_AFFIN_HWFN(cdev);
 int rc;

 memset(info, 0, sizeof(*info));
 rc = qed_fill_dev_info(cdev, &info->common);

 info->primary_dbq_rq_addr =
     qed_fcoe_get_primary_bdq_prod(hwfn, BDQ_ID_RQ);
 info->secondary_bdq_rq_addr =
     qed_fcoe_get_secondary_bdq_prod(hwfn, BDQ_ID_RQ);

 info->wwpn = hwfn->mcp_info->func_info.wwn_port;
 info->wwnn = hwfn->mcp_info->func_info.wwn_node;

 info->num_cqs = FEAT_NUM(hwfn, QED_FCOE_CQ);

 return rc;
}
