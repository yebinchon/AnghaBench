
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int) ;

__attribute__((used)) static void qed_iov_vf_pglue_clear_err(struct qed_hwfn *p_hwfn,
           struct qed_ptt *p_ptt, u8 abs_vfid)
{
 qed_wr(p_hwfn, p_ptt,
        PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR + (abs_vfid >> 5) * 4,
        1 << (abs_vfid & 0x1f));
}
