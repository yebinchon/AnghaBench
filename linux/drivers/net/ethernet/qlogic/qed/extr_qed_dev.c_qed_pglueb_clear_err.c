
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int abs_pf_id; } ;


 int BIT (int ) ;
 int PGLUE_B_REG_WAS_ERROR_PF_31_0_CLR ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

__attribute__((used)) static void qed_pglueb_clear_err(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 qed_wr(p_hwfn, p_ptt, PGLUE_B_REG_WAS_ERROR_PF_31_0_CLR,
        BIT(p_hwfn->abs_pf_id));
}
