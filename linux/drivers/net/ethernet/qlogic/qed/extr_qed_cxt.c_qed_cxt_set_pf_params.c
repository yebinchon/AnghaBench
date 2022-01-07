
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qed_iscsi_pf_params {int num_cons; int num_tasks; } ;
struct qed_fcoe_pf_params {int num_cons; int num_tasks; } ;
struct qed_eth_pf_params {int num_cons; int num_arfs_filters; int num_vf_cons; } ;
struct TYPE_6__ {struct qed_iscsi_pf_params iscsi_pf_params; struct qed_fcoe_pf_params fcoe_pf_params; struct qed_eth_pf_params eth_pf_params; int rdma_pf_params; } ;
struct TYPE_4__ {int personality; } ;
struct qed_hwfn {int cdev; TYPE_3__ pf_params; TYPE_2__* p_cxt_mngr; TYPE_1__ hw_info; scalar_t__ using_ll2; } ;
struct TYPE_5__ {int arfs_count; } ;


 int DP_INFO (int ,char*) ;
 int EINVAL ;
 int ETH_PF_PARAMS_VF_CONS_DEFAULT ;
 int PROTOCOLID_CORE ;
 int PROTOCOLID_ETH ;
 int PROTOCOLID_FCOE ;
 int PROTOCOLID_ISCSI ;
 int QED_CXT_FCOE_TID_SEG ;
 int QED_CXT_ISCSI_TID_SEG ;






 int qed_cxt_set_proto_cid_count (struct qed_hwfn*,int ,int,int ) ;
 int qed_cxt_set_proto_tid_count (struct qed_hwfn*,int ,int ,int ,int ,int) ;
 int qed_rdma_set_pf_params (struct qed_hwfn*,int *,int) ;

int qed_cxt_set_pf_params(struct qed_hwfn *p_hwfn, u32 rdma_tasks)
{

 u32 core_cids = 1;

 if (p_hwfn->using_ll2)
  core_cids += 4;
 qed_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_CORE, core_cids, 0);

 switch (p_hwfn->hw_info.personality) {
 case 131:
 case 132:
 case 130:
 {
   qed_rdma_set_pf_params(p_hwfn,
            &p_hwfn->
            pf_params.rdma_pf_params,
            rdma_tasks);

 }

 case 133:
 {
  struct qed_eth_pf_params *p_params =
      &p_hwfn->pf_params.eth_pf_params;

  if (!p_params->num_vf_cons)
   p_params->num_vf_cons =
       ETH_PF_PARAMS_VF_CONS_DEFAULT;
  qed_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_ETH,
         p_params->num_cons,
         p_params->num_vf_cons);
  p_hwfn->p_cxt_mngr->arfs_count = p_params->num_arfs_filters;
  break;
 }
 case 129:
 {
  struct qed_fcoe_pf_params *p_params;

  p_params = &p_hwfn->pf_params.fcoe_pf_params;

  if (p_params->num_cons && p_params->num_tasks) {
   qed_cxt_set_proto_cid_count(p_hwfn,
          PROTOCOLID_FCOE,
          p_params->num_cons,
          0);

   qed_cxt_set_proto_tid_count(p_hwfn, PROTOCOLID_FCOE,
          QED_CXT_FCOE_TID_SEG, 0,
          p_params->num_tasks, 1);
  } else {
   DP_INFO(p_hwfn->cdev,
    "Fcoe personality used without setting params!\n");
  }
  break;
 }
 case 128:
 {
  struct qed_iscsi_pf_params *p_params;

  p_params = &p_hwfn->pf_params.iscsi_pf_params;

  if (p_params->num_cons && p_params->num_tasks) {
   qed_cxt_set_proto_cid_count(p_hwfn,
          PROTOCOLID_ISCSI,
          p_params->num_cons,
          0);

   qed_cxt_set_proto_tid_count(p_hwfn,
          PROTOCOLID_ISCSI,
          QED_CXT_ISCSI_TID_SEG,
          0,
          p_params->num_tasks,
          1);
  } else {
   DP_INFO(p_hwfn->cdev,
    "Iscsi personality used without setting params!\n");
  }
  break;
 }
 default:
  return -EINVAL;
 }

 return 0;
}
