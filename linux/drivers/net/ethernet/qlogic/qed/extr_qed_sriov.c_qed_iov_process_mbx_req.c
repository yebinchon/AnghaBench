
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {scalar_t__ reply_address; } ;
struct TYPE_8__ {TYPE_2__ first_tlv; } ;
struct TYPE_9__ {int type; int length; } ;
struct TYPE_10__ {scalar_t__ reply_address; TYPE_4__ tl; int padding; } ;
struct qed_iov_vf_mbx {int b_pending_msg; TYPE_5__ first_tlv; TYPE_1__* req_virt; } ;
struct qed_vf_info {int abs_vf_id; TYPE_3__ acquire; int b_malicious; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct TYPE_6__ {TYPE_5__ first_tlv; } ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ,...) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,...) ;
 int PFVF_STATUS_MALICIOUS ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 int QED_MSG_IOV ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int,int,int ) ;
 scalar_t__ qed_iov_tlv_supported (int) ;
 int qed_iov_vf_mbx_acquire (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_close (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_int_cleanup (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_release (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_start_rxq (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_start_txq (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_start_vport (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_stop_rxqs (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_stop_txqs (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_stop_vport (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_ucast_filter (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_update_rxqs (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_update_tunn_param (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_mbx_vport_update (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_pf_bulletin_update_mac (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_pf_get_coalesce (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_pf_set_coalesce (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;

__attribute__((used)) static void qed_iov_process_mbx_req(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt, int vfid)
{
 struct qed_iov_vf_mbx *mbx;
 struct qed_vf_info *p_vf;

 p_vf = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!p_vf)
  return;

 mbx = &p_vf->vf_mbx;


 if (!mbx->b_pending_msg) {
  DP_NOTICE(p_hwfn,
     "VF[%02x]: Trying to process mailbox message when none is pending\n",
     p_vf->abs_vf_id);
  return;
 }
 mbx->b_pending_msg = 0;

 mbx->first_tlv = mbx->req_virt->first_tlv;

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "VF[%02x]: Processing mailbox message [type %04x]\n",
     p_vf->abs_vf_id, mbx->first_tlv.tl.type);


 if (qed_iov_tlv_supported(mbx->first_tlv.tl.type) &&
     !p_vf->b_malicious) {
  switch (mbx->first_tlv.tl.type) {
  case 144:
   qed_iov_vf_mbx_acquire(p_hwfn, p_ptt, p_vf);
   break;
  case 130:
   qed_iov_vf_mbx_start_vport(p_hwfn, p_ptt, p_vf);
   break;
  case 129:
   qed_iov_vf_mbx_stop_vport(p_hwfn, p_ptt, p_vf);
   break;
  case 137:
   qed_iov_vf_mbx_start_rxq(p_hwfn, p_ptt, p_vf);
   break;
  case 136:
   qed_iov_vf_mbx_start_txq(p_hwfn, p_ptt, p_vf);
   break;
  case 135:
   qed_iov_vf_mbx_stop_rxqs(p_hwfn, p_ptt, p_vf);
   break;
  case 134:
   qed_iov_vf_mbx_stop_txqs(p_hwfn, p_ptt, p_vf);
   break;
  case 132:
   qed_iov_vf_mbx_update_rxqs(p_hwfn, p_ptt, p_vf);
   break;
  case 128:
   qed_iov_vf_mbx_vport_update(p_hwfn, p_ptt, p_vf);
   break;
  case 133:
   qed_iov_vf_mbx_ucast_filter(p_hwfn, p_ptt, p_vf);
   break;
  case 142:
   qed_iov_vf_mbx_close(p_hwfn, p_ptt, p_vf);
   break;
  case 139:
   qed_iov_vf_mbx_int_cleanup(p_hwfn, p_ptt, p_vf);
   break;
  case 138:
   qed_iov_vf_mbx_release(p_hwfn, p_ptt, p_vf);
   break;
  case 131:
   qed_iov_vf_mbx_update_tunn_param(p_hwfn, p_ptt, p_vf);
   break;
  case 140:
   qed_iov_vf_pf_set_coalesce(p_hwfn, p_ptt, p_vf);
   break;
  case 141:
   qed_iov_vf_pf_get_coalesce(p_hwfn, p_ptt, p_vf);
   break;
  case 143:
   qed_iov_vf_pf_bulletin_update_mac(p_hwfn, p_ptt, p_vf);
   break;
  }
 } else if (qed_iov_tlv_supported(mbx->first_tlv.tl.type)) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "VF [%02x] - considered malicious; Ignoring TLV [%04x]\n",
      p_vf->abs_vf_id, mbx->first_tlv.tl.type);

  qed_iov_prepare_resp(p_hwfn, p_ptt, p_vf,
         mbx->first_tlv.tl.type,
         sizeof(struct pfvf_def_resp_tlv),
         PFVF_STATUS_MALICIOUS);
 } else {






  DP_NOTICE(p_hwfn,
     "VF[%02x]: unknown TLV. type %04x length %04x padding %08x reply address %llu\n",
     p_vf->abs_vf_id,
     mbx->first_tlv.tl.type,
     mbx->first_tlv.tl.length,
     mbx->first_tlv.padding, mbx->first_tlv.reply_address);




  if (p_vf->acquire.first_tlv.reply_address &&
      (mbx->first_tlv.reply_address ==
       p_vf->acquire.first_tlv.reply_address)) {
   qed_iov_prepare_resp(p_hwfn, p_ptt, p_vf,
          mbx->first_tlv.tl.type,
          sizeof(struct pfvf_def_resp_tlv),
          PFVF_STATUS_NOT_SUPPORTED);
  } else {
   DP_VERBOSE(p_hwfn,
       QED_MSG_IOV,
       "VF[%02x]: Can't respond to TLV - no valid reply address\n",
       p_vf->abs_vf_id);
  }
 }
}
