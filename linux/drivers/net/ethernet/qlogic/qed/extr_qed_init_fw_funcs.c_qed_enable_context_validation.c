
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int CDU_REG_CCFC_CTX_VALID0 ;
 int CDU_REG_CCFC_CTX_VALID1 ;
 int CDU_REG_TCFC_CTX_VALID0 ;
 int CDU_VALIDATION_DEFAULT_CFG ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

void qed_enable_context_validation(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt)
{
 u32 ctx_validation;


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 24;
 qed_wr(p_hwfn, p_ptt, CDU_REG_CCFC_CTX_VALID0, ctx_validation);


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 8;
 qed_wr(p_hwfn, p_ptt, CDU_REG_CCFC_CTX_VALID1, ctx_validation);


 ctx_validation = CDU_VALIDATION_DEFAULT_CFG << 8;
 qed_wr(p_hwfn, p_ptt, CDU_REG_TCFC_CTX_VALID0, ctx_validation);
}
