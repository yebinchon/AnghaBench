
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ FEAT_NUM (struct qed_hwfn*,int ) ;
 int QED_PF_L2_QUE ;

__attribute__((used)) static u32 qed_rdma_get_sb_id(void *p_hwfn, u32 rel_sb_id)
{

 return FEAT_NUM((struct qed_hwfn *)p_hwfn, QED_PF_L2_QUE) + rel_sb_id;
}
