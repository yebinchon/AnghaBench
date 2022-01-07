
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qed_vf_info {scalar_t__ state; int opaque_fid; int concrete_fid; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;


 int CHANNEL_TLV_RELEASE ;
 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_SUCCESS ;
 scalar_t__ VF_FREE ;
 scalar_t__ VF_STOPPED ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int ,int,int ) ;
 int qed_iov_vf_cleanup (struct qed_hwfn*,struct qed_vf_info*) ;
 int qed_sp_vf_stop (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static void qed_iov_vf_mbx_release(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       struct qed_vf_info *p_vf)
{
 u16 length = sizeof(struct pfvf_def_resp_tlv);
 u8 status = PFVF_STATUS_SUCCESS;
 int rc = 0;

 qed_iov_vf_cleanup(p_hwfn, p_vf);

 if (p_vf->state != VF_STOPPED && p_vf->state != VF_FREE) {

  rc = qed_sp_vf_stop(p_hwfn, p_vf->concrete_fid,
        p_vf->opaque_fid);

  if (rc) {
   DP_ERR(p_hwfn, "qed_sp_vf_stop returned error %d\n",
          rc);
   status = PFVF_STATUS_FAILURE;
  }

  p_vf->state = VF_STOPPED;
 }

 qed_iov_prepare_resp(p_hwfn, p_ptt, p_vf, CHANNEL_TLV_RELEASE,
        length, status);
}
