
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct unaligned_opaque_data {scalar_t__ cid; } ;
struct qed_iwarp_fpdu {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__) ;
 int QED_MSG_RDMA ;
 int memset (struct qed_iwarp_fpdu*,int ,int) ;
 struct qed_iwarp_fpdu* qed_iwarp_get_curr_fpdu (struct qed_hwfn*,int ) ;
 int qed_iwarp_mpa_get_data (struct qed_hwfn*,struct unaligned_opaque_data*,int ,int ) ;

__attribute__((used)) static void
qed_iwarp_ll2_slowpath(void *cxt,
         u8 connection_handle,
         u32 opaque_data_0, u32 opaque_data_1)
{
 struct unaligned_opaque_data unalign_data;
 struct qed_hwfn *p_hwfn = cxt;
 struct qed_iwarp_fpdu *fpdu;

 qed_iwarp_mpa_get_data(p_hwfn, &unalign_data,
          opaque_data_0, opaque_data_1);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "(0x%x) Flush fpdu\n",
     unalign_data.cid);

 fpdu = qed_iwarp_get_curr_fpdu(p_hwfn, (u16)unalign_data.cid);
 if (fpdu)
  memset(fpdu, 0, sizeof(*fpdu));
}
