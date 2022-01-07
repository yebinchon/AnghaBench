
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct unaligned_opaque_data {int cid; int first_mpa_offset; } ;
struct qed_iwarp_ll2_mpa_buf {int tcp_payload_len; int placement_offset; struct qed_iwarp_ll2_buff* ll2_buf; struct unaligned_opaque_data data; } ;
struct qed_iwarp_ll2_buff {scalar_t__ data; } ;
struct qed_iwarp_fpdu {int incomplete_bytes; int fpdu_length; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum qed_iwarp_mpa_pkt_type { ____Placeholder_qed_iwarp_mpa_pkt_type } qed_iwarp_mpa_pkt_type ;
struct TYPE_3__ {int ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EINVAL ;
 int QED_IWARP_IS_RIGHT_EDGE (struct unaligned_opaque_data*) ;



 int QED_MSG_RDMA ;
 int memset (struct qed_iwarp_fpdu*,int ,int) ;
 int qed_iwarp_cp_pkt (struct qed_hwfn*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,struct qed_iwarp_ll2_buff*,int ) ;
 struct qed_iwarp_fpdu* qed_iwarp_get_curr_fpdu (struct qed_hwfn*,int) ;
 int qed_iwarp_init_fpdu (struct qed_iwarp_ll2_buff*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,int ,int ) ;
 int qed_iwarp_ll2_post_rx (struct qed_hwfn*,struct qed_iwarp_ll2_buff*,int ) ;
 int qed_iwarp_mpa_classify (struct qed_hwfn*,struct qed_iwarp_fpdu*,int ,int *) ;
 int qed_iwarp_send_fpdu (struct qed_hwfn*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,struct qed_iwarp_ll2_buff*,int ,int) ;
 int qed_iwarp_update_fpdu_length (struct qed_hwfn*,struct qed_iwarp_fpdu*,int *) ;
 int qed_iwarp_win_right_edge (struct qed_hwfn*,struct qed_iwarp_fpdu*) ;

__attribute__((used)) static int
qed_iwarp_process_mpa_pkt(struct qed_hwfn *p_hwfn,
     struct qed_iwarp_ll2_mpa_buf *mpa_buf)
{
 struct unaligned_opaque_data *curr_pkt = &mpa_buf->data;
 struct qed_iwarp_ll2_buff *buf = mpa_buf->ll2_buf;
 enum qed_iwarp_mpa_pkt_type pkt_type;
 struct qed_iwarp_fpdu *fpdu;
 int rc = -EINVAL;
 u8 *mpa_data;

 fpdu = qed_iwarp_get_curr_fpdu(p_hwfn, curr_pkt->cid & 0xffff);
 if (!fpdu) {
  DP_ERR(p_hwfn, "Invalid cid, drop and post back to rx cid=%x\n",
         curr_pkt->cid);
  goto err;
 }

 do {
  mpa_data = ((u8 *)(buf->data) + curr_pkt->first_mpa_offset);

  pkt_type = qed_iwarp_mpa_classify(p_hwfn, fpdu,
        mpa_buf->tcp_payload_len,
        mpa_data);

  switch (pkt_type) {
  case 129:
   qed_iwarp_init_fpdu(buf, fpdu,
         curr_pkt,
         mpa_buf->tcp_payload_len,
         mpa_buf->placement_offset);

   if (!QED_IWARP_IS_RIGHT_EDGE(curr_pkt)) {
    mpa_buf->tcp_payload_len = 0;
    break;
   }

   rc = qed_iwarp_win_right_edge(p_hwfn, fpdu);

   if (rc) {
    DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
        "Can't send FPDU:reset rc=%d\n", rc);
    memset(fpdu, 0, sizeof(*fpdu));
    break;
   }

   mpa_buf->tcp_payload_len = 0;
   break;
  case 130:
   qed_iwarp_init_fpdu(buf, fpdu,
         curr_pkt,
         mpa_buf->tcp_payload_len,
         mpa_buf->placement_offset);

   rc = qed_iwarp_send_fpdu(p_hwfn, fpdu, curr_pkt, buf,
       mpa_buf->tcp_payload_len,
       pkt_type);
   if (rc) {
    DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
        "Can't send FPDU:reset rc=%d\n", rc);
    memset(fpdu, 0, sizeof(*fpdu));
    break;
   }

   mpa_buf->tcp_payload_len -= fpdu->fpdu_length;
   curr_pkt->first_mpa_offset += fpdu->fpdu_length;
   break;
  case 128:
   qed_iwarp_update_fpdu_length(p_hwfn, fpdu, mpa_data);
   if (mpa_buf->tcp_payload_len < fpdu->incomplete_bytes) {



    if (QED_IWARP_IS_RIGHT_EDGE(curr_pkt)) {
     rc = qed_iwarp_win_right_edge(p_hwfn,
              fpdu);

     if (rc)
      return rc;
    }

    rc = qed_iwarp_cp_pkt(p_hwfn, fpdu, curr_pkt,
            buf,
            mpa_buf->tcp_payload_len);
    if (rc)
     return rc;

    mpa_buf->tcp_payload_len = 0;
    break;
   }

   rc = qed_iwarp_send_fpdu(p_hwfn, fpdu, curr_pkt, buf,
       mpa_buf->tcp_payload_len,
       pkt_type);
   if (rc) {
    DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
        "Can't send FPDU:delay rc=%d\n", rc);



    break;
   }

   mpa_buf->tcp_payload_len -= fpdu->incomplete_bytes;
   curr_pkt->first_mpa_offset += fpdu->incomplete_bytes;

   fpdu->incomplete_bytes = 0;
   break;
  }
 } while (mpa_buf->tcp_payload_len && !rc);

 return rc;

err:
 qed_iwarp_ll2_post_rx(p_hwfn,
         buf,
         p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle);
 return rc;
}
