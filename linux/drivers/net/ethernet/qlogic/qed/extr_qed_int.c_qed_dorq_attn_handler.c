
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dorq_attn; } ;
struct qed_hwfn {TYPE_1__ db_recovery_info; } ;


 int qed_dorq_attn_cb (struct qed_hwfn*) ;

__attribute__((used)) static void qed_dorq_attn_handler(struct qed_hwfn *p_hwfn)
{
 if (p_hwfn->db_recovery_info.dorq_attn)
  goto out;


 qed_dorq_attn_cb(p_hwfn);
out:
 p_hwfn->db_recovery_info.dorq_attn = 0;
}
