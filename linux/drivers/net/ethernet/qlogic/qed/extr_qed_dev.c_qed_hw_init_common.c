
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_qm_info {int pf_rl_en; int pf_wfq_en; int qm_port_params; int vport_wfq_en; int vport_rl_en; int max_phys_tcs_per_port; } ;
struct qed_qm_common_rt_init_params {int pf_rl_en; int pf_wfq_en; int port_params; int vport_wfq_en; int vport_rl_en; int max_phys_tcs_per_port; int max_ports_per_engine; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {scalar_t__ rel_pf_id; struct qed_dev* cdev; TYPE_2__* mcp_info; struct qed_qm_info qm_info; } ;
struct qed_dev {int num_ports_in_engine; } ;
typedef int params ;
struct TYPE_3__ {scalar_t__ bandwidth_min; scalar_t__ bandwidth_max; } ;
struct TYPE_4__ {TYPE_1__ func_info; } ;


 int ANY_PHASE_ID ;
 int CCFC_REG_STRONG_ENABLE_VF ;
 int CCFC_REG_WEAK_ENABLE_VF ;
 scalar_t__ MAX_NUM_VFS_BB ;
 scalar_t__ MAX_NUM_VFS_K2 ;
 scalar_t__ NUM_OF_ENG_PFS (struct qed_dev*) ;
 int PGLUE_B_REG_USE_CLIENTID_IN_TAG ;
 int PHASE_ENGINE ;
 int PRS_REG_SEARCH_ROCE ;
 int PRS_REG_SEARCH_TCP ;
 int PSWRQ2_REG_L2P_VALIDATE_VFID ;
 scalar_t__ QED_IS_AH (struct qed_dev*) ;
 scalar_t__ QED_IS_BB (struct qed_dev*) ;
 int TCFC_REG_STRONG_ENABLE_VF ;
 int TCFC_REG_WEAK_ENABLE_VF ;
 int memset (struct qed_qm_common_rt_init_params*,int ,int) ;
 int qed_cxt_hw_init_common (struct qed_hwfn*) ;
 int qed_fid_pretend (struct qed_hwfn*,struct qed_ptt*,scalar_t__) ;
 int qed_gtt_init (struct qed_hwfn*) ;
 int qed_init_cache_line_size (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_init_cau_rt_data (struct qed_dev*) ;
 int qed_init_run (struct qed_hwfn*,struct qed_ptt*,int ,int ,int) ;
 int qed_qm_common_rt_init (struct qed_hwfn*,struct qed_qm_common_rt_init_params*) ;
 scalar_t__ qed_vfid_to_concrete (struct qed_hwfn*,scalar_t__) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static int qed_hw_init_common(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt, int hw_mode)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 struct qed_qm_common_rt_init_params params;
 struct qed_dev *cdev = p_hwfn->cdev;
 u8 vf_id, max_num_vfs;
 u16 num_pfs, pf_id;
 u32 concrete_fid;
 int rc = 0;

 qed_init_cau_rt_data(cdev);


 qed_gtt_init(p_hwfn);

 if (p_hwfn->mcp_info) {
  if (p_hwfn->mcp_info->func_info.bandwidth_max)
   qm_info->pf_rl_en = 1;
  if (p_hwfn->mcp_info->func_info.bandwidth_min)
   qm_info->pf_wfq_en = 1;
 }

 memset(&params, 0, sizeof(params));
 params.max_ports_per_engine = p_hwfn->cdev->num_ports_in_engine;
 params.max_phys_tcs_per_port = qm_info->max_phys_tcs_per_port;
 params.pf_rl_en = qm_info->pf_rl_en;
 params.pf_wfq_en = qm_info->pf_wfq_en;
 params.vport_rl_en = qm_info->vport_rl_en;
 params.vport_wfq_en = qm_info->vport_wfq_en;
 params.port_params = qm_info->qm_port_params;

 qed_qm_common_rt_init(p_hwfn, &params);

 qed_cxt_hw_init_common(p_hwfn);

 qed_init_cache_line_size(p_hwfn, p_ptt);

 rc = qed_init_run(p_hwfn, p_ptt, PHASE_ENGINE, ANY_PHASE_ID, hw_mode);
 if (rc)
  return rc;

 qed_wr(p_hwfn, p_ptt, PSWRQ2_REG_L2P_VALIDATE_VFID, 0);
 qed_wr(p_hwfn, p_ptt, PGLUE_B_REG_USE_CLIENTID_IN_TAG, 1);

 if (QED_IS_BB(p_hwfn->cdev)) {
  num_pfs = NUM_OF_ENG_PFS(p_hwfn->cdev);
  for (pf_id = 0; pf_id < num_pfs; pf_id++) {
   qed_fid_pretend(p_hwfn, p_ptt, pf_id);
   qed_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_ROCE, 0x0);
   qed_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_TCP, 0x0);
  }

  qed_fid_pretend(p_hwfn, p_ptt, p_hwfn->rel_pf_id);
 }

 max_num_vfs = QED_IS_AH(cdev) ? MAX_NUM_VFS_K2 : MAX_NUM_VFS_BB;
 for (vf_id = 0; vf_id < max_num_vfs; vf_id++) {
  concrete_fid = qed_vfid_to_concrete(p_hwfn, vf_id);
  qed_fid_pretend(p_hwfn, p_ptt, (u16) concrete_fid);
  qed_wr(p_hwfn, p_ptt, CCFC_REG_STRONG_ENABLE_VF, 0x1);
  qed_wr(p_hwfn, p_ptt, CCFC_REG_WEAK_ENABLE_VF, 0x0);
  qed_wr(p_hwfn, p_ptt, TCFC_REG_STRONG_ENABLE_VF, 0x1);
  qed_wr(p_hwfn, p_ptt, TCFC_REG_WEAK_ENABLE_VF, 0x0);
 }

 qed_fid_pretend(p_hwfn, p_ptt, p_hwfn->rel_pf_id);

 return rc;
}
