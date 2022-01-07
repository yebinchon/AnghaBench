
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qed_iwarp_fpdu {int fpdu_length; int mpa_frag_len; int incomplete_bytes; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int,int ) ;
 int QED_IWARP_FPDU_LEN_WITH_PAD (int) ;
 int QED_IWARP_INVALID_FPDU_LENGTH ;
 int QED_MSG_RDMA ;

__attribute__((used)) static void
qed_iwarp_update_fpdu_length(struct qed_hwfn *p_hwfn,
        struct qed_iwarp_fpdu *fpdu, u8 *mpa_data)
{
 u16 mpa_len;


 if (fpdu->incomplete_bytes == QED_IWARP_INVALID_FPDU_LENGTH) {

  mpa_len = fpdu->fpdu_length | *mpa_data;
  fpdu->fpdu_length = QED_IWARP_FPDU_LEN_WITH_PAD(mpa_len);

  fpdu->mpa_frag_len = 1;
  fpdu->incomplete_bytes = fpdu->fpdu_length - 1;
  DP_VERBOSE(p_hwfn,
      QED_MSG_RDMA,
      "MPA_ALIGN: Partial header mpa_len=%x fpdu_length=%x incomplete_bytes=%x\n",
      mpa_len, fpdu->fpdu_length, fpdu->incomplete_bytes);
 }
}
