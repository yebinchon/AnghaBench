
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_2__* p_ooo_info; } ;
struct ooo_opaque {int dummy; } ;
struct TYPE_3__ {int num_of_cqes; scalar_t__ head_idx; int p_cqes; } ;
struct TYPE_4__ {TYPE_1__ ooo_history; } ;


 int memset (int ,int ,int) ;
 int qed_ooo_release_all_isles (struct qed_hwfn*,TYPE_2__*) ;

void qed_ooo_setup(struct qed_hwfn *p_hwfn)
{
 qed_ooo_release_all_isles(p_hwfn, p_hwfn->p_ooo_info);
 memset(p_hwfn->p_ooo_info->ooo_history.p_cqes, 0,
        p_hwfn->p_ooo_info->ooo_history.num_of_cqes *
        sizeof(struct ooo_opaque));
 p_hwfn->p_ooo_info->ooo_history.head_idx = 0;
}
