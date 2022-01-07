
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_sp_sb; } ;
struct TYPE_2__ {int sb_info; } ;


 int qed_int_sb_attn_setup (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_int_sb_setup (struct qed_hwfn*,struct qed_ptt*,int *) ;
 int qed_int_sp_dpc_setup (struct qed_hwfn*) ;

void qed_int_setup(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 qed_int_sb_setup(p_hwfn, p_ptt, &p_hwfn->p_sp_sb->sb_info);
 qed_int_sb_attn_setup(p_hwfn, p_ptt);
 qed_int_sp_dpc_setup(p_hwfn);
}
