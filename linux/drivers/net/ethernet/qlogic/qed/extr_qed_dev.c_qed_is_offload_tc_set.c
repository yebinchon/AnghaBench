
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offload_tc_set; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;



__attribute__((used)) static bool qed_is_offload_tc_set(struct qed_hwfn *p_hwfn)
{
 return p_hwfn->hw_info.offload_tc_set;
}
