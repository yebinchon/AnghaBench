
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* p_iov_info; } ;
struct TYPE_3__ {int total_vfs; } ;


 scalar_t__ IS_QED_SRIOV (TYPE_2__*) ;

__attribute__((used)) static u16 qed_init_qm_get_num_vfs(struct qed_hwfn *p_hwfn)
{
 return IS_QED_SRIOV(p_hwfn->cdev) ?
        p_hwfn->cdev->p_iov_info->total_vfs : 0;
}
