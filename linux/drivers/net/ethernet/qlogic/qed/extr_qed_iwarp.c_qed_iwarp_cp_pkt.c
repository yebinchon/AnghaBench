
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct unaligned_opaque_data {int first_mpa_offset; } ;
struct qed_iwarp_ll2_buff {int * buff_size; int * data; int data_phys_addr; } ;
struct qed_iwarp_fpdu {scalar_t__ mpa_frag_len; scalar_t__ incomplete_bytes; int * mpa_frag_virt; int mpa_frag; struct qed_iwarp_ll2_buff* mpa_buf; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int * mpa_intermediate_buf; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_ERR (struct qed_hwfn*,char*,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int QED_MSG_RDMA ;
 int memcpy (int *,int *,scalar_t__) ;
 int qed_iwarp_recycle_pkt (struct qed_hwfn*,struct qed_iwarp_fpdu*,struct qed_iwarp_ll2_buff*) ;

__attribute__((used)) static int
qed_iwarp_cp_pkt(struct qed_hwfn *p_hwfn,
   struct qed_iwarp_fpdu *fpdu,
   struct unaligned_opaque_data *pkt_data,
   struct qed_iwarp_ll2_buff *buf, u16 tcp_payload_size)
{
 u8 *tmp_buf = p_hwfn->p_rdma_info->iwarp.mpa_intermediate_buf;
 int rc;







 if ((fpdu->mpa_frag_len + tcp_payload_size) > (u16)buf->buff_size) {
  DP_ERR(p_hwfn,
         "MPA ALIGN: Unexpected: buffer is not large enough for split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\n",
         buf->buff_size, fpdu->mpa_frag_len,
         tcp_payload_size, fpdu->incomplete_bytes);
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
     "MPA ALIGN Copying fpdu: [%p, %d] [%p, %d]\n",
     fpdu->mpa_frag_virt, fpdu->mpa_frag_len,
     (u8 *)(buf->data) + pkt_data->first_mpa_offset,
     tcp_payload_size);

 memcpy(tmp_buf, fpdu->mpa_frag_virt, fpdu->mpa_frag_len);
 memcpy(tmp_buf + fpdu->mpa_frag_len,
        (u8 *)(buf->data) + pkt_data->first_mpa_offset,
        tcp_payload_size);

 rc = qed_iwarp_recycle_pkt(p_hwfn, fpdu, fpdu->mpa_buf);
 if (rc)
  return rc;




 memcpy((u8 *)(buf->data), tmp_buf,
        fpdu->mpa_frag_len + tcp_payload_size);

 fpdu->mpa_buf = buf;


 fpdu->mpa_frag = buf->data_phys_addr;
 fpdu->mpa_frag_virt = buf->data;
 fpdu->mpa_frag_len += tcp_payload_size;

 fpdu->incomplete_bytes -= tcp_payload_size;

 DP_VERBOSE(p_hwfn,
     QED_MSG_RDMA,
     "MPA ALIGN: split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\n",
     buf->buff_size, fpdu->mpa_frag_len, tcp_payload_size,
     fpdu->incomplete_bytes);

 return 0;
}
