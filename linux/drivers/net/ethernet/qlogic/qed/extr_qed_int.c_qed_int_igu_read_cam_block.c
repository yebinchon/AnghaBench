
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_igu_block {int igu_sb_id; void* vector_number; void* is_pf; void* function_id; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct qed_hwfn {TYPE_2__ hw_info; } ;
struct TYPE_3__ {struct qed_igu_block* entry; } ;


 void* GET_FIELD (int ,int ) ;
 int IGU_MAPPING_LINE_FUNCTION_NUMBER ;
 int IGU_MAPPING_LINE_PF_VALID ;
 int IGU_MAPPING_LINE_VECTOR_NUMBER ;
 scalar_t__ IGU_REG_MAPPING_MEMORY ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,scalar_t__) ;

__attribute__((used)) static void qed_int_igu_read_cam_block(struct qed_hwfn *p_hwfn,
           struct qed_ptt *p_ptt, u16 igu_sb_id)
{
 u32 val = qed_rd(p_hwfn, p_ptt,
    IGU_REG_MAPPING_MEMORY + sizeof(u32) * igu_sb_id);
 struct qed_igu_block *p_block;

 p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_sb_id];


 p_block->function_id = GET_FIELD(val, IGU_MAPPING_LINE_FUNCTION_NUMBER);
 p_block->is_pf = GET_FIELD(val, IGU_MAPPING_LINE_PF_VALID);
 p_block->vector_number = GET_FIELD(val, IGU_MAPPING_LINE_VECTOR_NUMBER);
 p_block->igu_sb_id = igu_sb_id;
}
