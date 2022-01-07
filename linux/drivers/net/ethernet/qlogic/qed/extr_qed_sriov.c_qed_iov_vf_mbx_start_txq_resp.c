
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ eth_fp_hsi_minor; } ;
struct TYPE_4__ {TYPE_1__ vfdev_info; } ;
struct qed_iov_vf_mbx {int * offset; scalar_t__ reply_virt; } ;
struct qed_vf_info {TYPE_2__ acquire; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_start_queue_resp_tlv {int offset; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct channel_list_end_tlv {int dummy; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_START_TXQ ;
 int DQ_DEMS_LEGACY ;
 scalar_t__ ETH_HSI_VER_NO_PKT_LEN_TUNN ;
 int PFVF_STATUS_SUCCESS ;
 struct pfvf_start_queue_resp_tlv* qed_add_tlv (struct qed_hwfn*,int **,int ,int) ;
 int qed_db_addr_vf (int ,int ) ;
 int qed_iov_send_response (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int,int ) ;

__attribute__((used)) static void qed_iov_vf_mbx_start_txq_resp(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       struct qed_vf_info *p_vf,
       u32 cid, u8 status)
{
 struct qed_iov_vf_mbx *mbx = &p_vf->vf_mbx;
 struct pfvf_start_queue_resp_tlv *p_tlv;
 bool b_legacy = 0;
 u16 length;

 mbx->offset = (u8 *)mbx->reply_virt;





 if (p_vf->acquire.vfdev_info.eth_fp_hsi_minor ==
     ETH_HSI_VER_NO_PKT_LEN_TUNN)
  b_legacy = 1;

 if (!b_legacy)
  length = sizeof(*p_tlv);
 else
  length = sizeof(struct pfvf_def_resp_tlv);

 p_tlv = qed_add_tlv(p_hwfn, &mbx->offset, CHANNEL_TLV_START_TXQ,
       length);
 qed_add_tlv(p_hwfn, &mbx->offset, CHANNEL_TLV_LIST_END,
      sizeof(struct channel_list_end_tlv));


 if ((status == PFVF_STATUS_SUCCESS) && !b_legacy)
  p_tlv->offset = qed_db_addr_vf(cid, DQ_DEMS_LEGACY);

 qed_iov_send_response(p_hwfn, p_ptt, p_vf, length, status);
}
