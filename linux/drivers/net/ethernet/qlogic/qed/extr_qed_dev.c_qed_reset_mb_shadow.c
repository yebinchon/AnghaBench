
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int mfw_mb_length; int mfw_mb_cur; int mfw_mb_shadow; } ;


 int memcpy (int ,int ,int ) ;
 int qed_mcp_read_mb (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static void qed_reset_mb_shadow(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_main_ptt)
{

 qed_mcp_read_mb(p_hwfn, p_main_ptt);
 memcpy(p_hwfn->mcp_info->mfw_mb_shadow,
        p_hwfn->mcp_info->mfw_mb_cur, p_hwfn->mcp_info->mfw_mb_length);
}
