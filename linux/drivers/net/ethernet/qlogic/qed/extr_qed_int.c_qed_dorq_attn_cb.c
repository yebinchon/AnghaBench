
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dorq_attn; } ;
struct qed_hwfn {TYPE_1__ db_recovery_info; } ;


 int qed_dorq_attn_int_sts (struct qed_hwfn*) ;
 int qed_dorq_attn_overflow (struct qed_hwfn*) ;

__attribute__((used)) static int qed_dorq_attn_cb(struct qed_hwfn *p_hwfn)
{
 p_hwfn->db_recovery_info.dorq_attn = 1;
 qed_dorq_attn_overflow(p_hwfn);

 return qed_dorq_attn_int_sts(p_hwfn);
}
