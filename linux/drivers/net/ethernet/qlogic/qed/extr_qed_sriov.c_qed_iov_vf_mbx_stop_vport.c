
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_vf_info {int spoof_chk; int b_malicious; int shadow_config; scalar_t__ configured_features; int vport_id; int opaque_fid; int abs_vf_id; int vport_instance; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;


 int CHANNEL_TLV_VPORT_TEARDOWN ;
 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_MALICIOUS ;
 int PFVF_STATUS_SUCCESS ;
 int memset (int *,int ,int) ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int ,int,int ) ;
 scalar_t__ qed_iov_validate_active_rxq (struct qed_hwfn*,struct qed_vf_info*) ;
 scalar_t__ qed_iov_validate_active_txq (struct qed_hwfn*,struct qed_vf_info*) ;
 int qed_sp_vport_stop (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static void qed_iov_vf_mbx_stop_vport(struct qed_hwfn *p_hwfn,
          struct qed_ptt *p_ptt,
          struct qed_vf_info *vf)
{
 u8 status = PFVF_STATUS_SUCCESS;
 int rc;

 vf->vport_instance--;
 vf->spoof_chk = 0;

 if ((qed_iov_validate_active_rxq(p_hwfn, vf)) ||
     (qed_iov_validate_active_txq(p_hwfn, vf))) {
  vf->b_malicious = 1;
  DP_NOTICE(p_hwfn,
     "VF [%02x] - considered malicious; Unable to stop RX/TX queues\n",
     vf->abs_vf_id);
  status = PFVF_STATUS_MALICIOUS;
  goto out;
 }

 rc = qed_sp_vport_stop(p_hwfn, vf->opaque_fid, vf->vport_id);
 if (rc) {
  DP_ERR(p_hwfn, "qed_iov_vf_mbx_stop_vport returned error %d\n",
         rc);
  status = PFVF_STATUS_FAILURE;
 }


 vf->configured_features = 0;
 memset(&vf->shadow_config, 0, sizeof(vf->shadow_config));

out:
 qed_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_VPORT_TEARDOWN,
        sizeof(struct pfvf_def_resp_tlv), status);
}
