
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int offload_tc; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int PQ_INIT_DEFAULT_TC ;
 scalar_t__ qed_is_offload_tc_set (struct qed_hwfn*) ;

__attribute__((used)) static u32 qed_get_offload_tc(struct qed_hwfn *p_hwfn)
{
 if (qed_is_offload_tc_set(p_hwfn))
  return p_hwfn->hw_info.offload_tc;

 return PQ_INIT_DEFAULT_TC;
}
