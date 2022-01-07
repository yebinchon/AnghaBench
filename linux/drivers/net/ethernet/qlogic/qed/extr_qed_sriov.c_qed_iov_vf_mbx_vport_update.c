
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct qed_iov_vf_mbx {int dummy; } ;
struct qed_vf_info {int relative_vf_id; int vport_id; int opaque_fid; int abs_vf_id; int vport_instance; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_sp_vport_update_params {int * rss_params; int vport_id; int opaque_fid; } ;
struct qed_sge_tpa_params {int dummy; } ;
struct qed_rss_params {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef int params ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 int PFVF_STATUS_SUCCESS ;
 int QED_MSG_IOV ;
 int QED_SPQ_MODE_EBLOCK ;
 int memset (struct qed_sp_vport_update_params*,int ,int) ;
 scalar_t__ qed_iov_pre_update_vport (struct qed_hwfn*,int ,struct qed_sp_vport_update_params*,scalar_t__*) ;
 scalar_t__ qed_iov_prep_vp_update_resp_tlvs (struct qed_hwfn*,struct qed_vf_info*,struct qed_iov_vf_mbx*,int ,scalar_t__,scalar_t__) ;
 int qed_iov_send_response (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,scalar_t__,int ) ;
 int qed_iov_vp_update_accept_any_vlan (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_accept_flag (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_act_param (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_mcast_bin_param (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_rss_param (struct qed_hwfn*,struct qed_vf_info*,struct qed_sp_vport_update_params*,struct qed_rss_params*,struct qed_iov_vf_mbx*,scalar_t__*,scalar_t__*) ;
 int qed_iov_vp_update_sge_tpa_param (struct qed_hwfn*,struct qed_vf_info*,struct qed_sp_vport_update_params*,struct qed_sge_tpa_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_tx_switch (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_iov_vp_update_vlan_param (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_vf_info*,struct qed_iov_vf_mbx*,scalar_t__*) ;
 int qed_sp_vport_update (struct qed_hwfn*,struct qed_sp_vport_update_params*,int ,int *) ;
 int vfree (struct qed_rss_params*) ;
 struct qed_rss_params* vzalloc (int) ;

__attribute__((used)) static void qed_iov_vf_mbx_vport_update(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     struct qed_vf_info *vf)
{
 struct qed_rss_params *p_rss_params = ((void*)0);
 struct qed_sp_vport_update_params params;
 struct qed_iov_vf_mbx *mbx = &vf->vf_mbx;
 struct qed_sge_tpa_params sge_tpa_params;
 u16 tlvs_mask = 0, tlvs_accepted = 0;
 u8 status = PFVF_STATUS_SUCCESS;
 u16 length;
 int rc;


 if (!vf->vport_instance) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "No VPORT instance available for VF[%d], failing vport update\n",
      vf->abs_vf_id);
  status = PFVF_STATUS_FAILURE;
  goto out;
 }
 p_rss_params = vzalloc(sizeof(*p_rss_params));
 if (p_rss_params == ((void*)0)) {
  status = PFVF_STATUS_FAILURE;
  goto out;
 }

 memset(&params, 0, sizeof(params));
 params.opaque_fid = vf->opaque_fid;
 params.vport_id = vf->vport_id;
 params.rss_params = ((void*)0);




 qed_iov_vp_update_act_param(p_hwfn, &params, mbx, &tlvs_mask);
 qed_iov_vp_update_vlan_param(p_hwfn, &params, vf, mbx, &tlvs_mask);
 qed_iov_vp_update_tx_switch(p_hwfn, &params, mbx, &tlvs_mask);
 qed_iov_vp_update_mcast_bin_param(p_hwfn, &params, mbx, &tlvs_mask);
 qed_iov_vp_update_accept_flag(p_hwfn, &params, mbx, &tlvs_mask);
 qed_iov_vp_update_accept_any_vlan(p_hwfn, &params, mbx, &tlvs_mask);
 qed_iov_vp_update_sge_tpa_param(p_hwfn, vf, &params,
     &sge_tpa_params, mbx, &tlvs_mask);

 tlvs_accepted = tlvs_mask;





 qed_iov_vp_update_rss_param(p_hwfn, vf, &params, p_rss_params,
        mbx, &tlvs_mask, &tlvs_accepted);

 if (qed_iov_pre_update_vport(p_hwfn, vf->relative_vf_id,
         &params, &tlvs_accepted)) {
  tlvs_accepted = 0;
  status = PFVF_STATUS_NOT_SUPPORTED;
  goto out;
 }

 if (!tlvs_accepted) {
  if (tlvs_mask)
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "Upper-layer prevents VF vport configuration\n");
  else
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "No feature tlvs found for vport update\n");
  status = PFVF_STATUS_NOT_SUPPORTED;
  goto out;
 }

 rc = qed_sp_vport_update(p_hwfn, &params, QED_SPQ_MODE_EBLOCK, ((void*)0));

 if (rc)
  status = PFVF_STATUS_FAILURE;

out:
 vfree(p_rss_params);
 length = qed_iov_prep_vp_update_resp_tlvs(p_hwfn, vf, mbx, status,
        tlvs_mask, tlvs_accepted);
 qed_iov_send_response(p_hwfn, p_ptt, vf, length, status);
}
