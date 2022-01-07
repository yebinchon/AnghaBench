
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int p_main_ptt; int cdev; } ;


 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ;
 int PGLUE_B_REG_PGL_ADDR_88_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_8C_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_90_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_94_F0_BB ;
 int PGLUE_B_REG_PGL_ADDR_E8_F0_K2 ;
 int PGLUE_B_REG_PGL_ADDR_EC_F0_K2 ;
 int PGLUE_B_REG_PGL_ADDR_F0_F0_K2 ;
 int PGLUE_B_REG_PGL_ADDR_F4_F0_K2 ;
 scalar_t__ QED_IS_AH (int ) ;
 int qed_pglueb_clear_err (struct qed_hwfn*,int ) ;
 int qed_wr (struct qed_hwfn*,int ,int ,int) ;

__attribute__((used)) static void qed_hw_hwfn_prepare(struct qed_hwfn *p_hwfn)
{

 if (QED_IS_AH(p_hwfn->cdev)) {
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_E8_F0_K2, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_EC_F0_K2, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_F0_F0_K2, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_F4_F0_K2, 0);
 } else {
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_88_F0_BB, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_8C_F0_BB, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_90_F0_BB, 0);
  qed_wr(p_hwfn, p_hwfn->p_main_ptt,
         PGLUE_B_REG_PGL_ADDR_94_F0_BB, 0);
 }


 qed_pglueb_clear_err(p_hwfn, p_hwfn->p_main_ptt);


 qed_wr(p_hwfn, p_hwfn->p_main_ptt,
        PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);
}
