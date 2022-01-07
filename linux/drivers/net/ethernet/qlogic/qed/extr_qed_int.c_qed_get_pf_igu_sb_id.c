
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct qed_igu_block {int status; size_t vector_number; int is_pf; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct qed_hwfn {TYPE_2__ hw_info; int cdev; } ;
struct TYPE_3__ {struct qed_igu_block* entry; } ;


 int QED_IGU_STATUS_VALID ;
 size_t QED_MAPPING_MEMORY_SIZE (int ) ;
 size_t QED_SB_INVALID_IDX ;

__attribute__((used)) static u16 qed_get_pf_igu_sb_id(struct qed_hwfn *p_hwfn, u16 vector_id)
{
 struct qed_igu_block *p_block;
 u16 igu_id;

 for (igu_id = 0; igu_id < QED_MAPPING_MEMORY_SIZE(p_hwfn->cdev);
      igu_id++) {
  p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_id];

  if (!(p_block->status & QED_IGU_STATUS_VALID) ||
      !p_block->is_pf ||
      p_block->vector_number != vector_id)
   continue;

  return igu_id;
 }

 return QED_SB_INVALID_IDX;
}
