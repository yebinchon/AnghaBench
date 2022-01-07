
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int IGU_REG_ATTENTION_ENABLE ;
 int IGU_REG_LEADING_EDGE_LATCH ;
 int IGU_REG_TRAILING_EDGE_LATCH ;
 int MISC_REG_AEU_MASK_ATTN_IGU ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static void qed_int_igu_enable_attn(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt)
{


 qed_wr(p_hwfn, p_ptt, IGU_REG_ATTENTION_ENABLE, 0);
 qed_wr(p_hwfn, p_ptt, IGU_REG_LEADING_EDGE_LATCH, 0xfff);
 qed_wr(p_hwfn, p_ptt, IGU_REG_TRAILING_EDGE_LATCH, 0xfff);
 qed_wr(p_hwfn, p_ptt, IGU_REG_ATTENTION_ENABLE, 0xfff);


 qed_wr(p_hwfn, p_ptt, MISC_REG_AEU_MASK_ATTN_IGU, 0xff);
}
