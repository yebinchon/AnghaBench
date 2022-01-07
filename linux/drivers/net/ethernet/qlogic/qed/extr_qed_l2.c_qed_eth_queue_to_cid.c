
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qed_queue_start_common_params {int dummy; } ;
struct qed_queue_cid_vf_params {int vf_legacy; int vf_qid; int vfid; } ;
struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 scalar_t__ IS_PF (int ) ;
 int PROTOCOLID_ETH ;
 int QED_CXT_PF_CID ;
 int QED_QCID_LEGACY_VF_CID ;
 scalar_t__ _qed_cxt_acquire_cid (struct qed_hwfn*,int ,int *,int ) ;
 int _qed_cxt_release_cid (struct qed_hwfn*,int ,int ) ;
 struct qed_queue_cid* _qed_eth_queue_to_cid (struct qed_hwfn*,int ,int ,struct qed_queue_start_common_params*,int,struct qed_queue_cid_vf_params*) ;

struct qed_queue_cid *
qed_eth_queue_to_cid(struct qed_hwfn *p_hwfn,
       u16 opaque_fid,
       struct qed_queue_start_common_params *p_params,
       bool b_is_rx,
       struct qed_queue_cid_vf_params *p_vf_params)
{
 struct qed_queue_cid *p_cid;
 u8 vfid = QED_CXT_PF_CID;
 bool b_legacy_vf = 0;
 u32 cid = 0;





 if (p_vf_params) {
  vfid = p_vf_params->vfid;

  if (p_vf_params->vf_legacy & QED_QCID_LEGACY_VF_CID) {
   b_legacy_vf = 1;
   cid = p_vf_params->vf_qid;
  }
 }





 if (IS_PF(p_hwfn->cdev) && !b_legacy_vf) {
  if (_qed_cxt_acquire_cid(p_hwfn, PROTOCOLID_ETH,
      &cid, vfid)) {
   DP_NOTICE(p_hwfn, "Failed to acquire cid\n");
   return ((void*)0);
  }
 }

 p_cid = _qed_eth_queue_to_cid(p_hwfn, opaque_fid, cid,
          p_params, b_is_rx, p_vf_params);
 if (!p_cid && IS_PF(p_hwfn->cdev) && !b_legacy_vf)
  _qed_cxt_release_cid(p_hwfn, cid, vfid);

 return p_cid;
}
