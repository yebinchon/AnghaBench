
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int p_dpc_ptt; } ;


 int qed_pglueb_rbc_attn_handler (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_pglueb_rbc_attn_cb(struct qed_hwfn *p_hwfn)
{
 return qed_pglueb_rbc_attn_handler(p_hwfn, p_hwfn->p_dpc_ptt);
}
