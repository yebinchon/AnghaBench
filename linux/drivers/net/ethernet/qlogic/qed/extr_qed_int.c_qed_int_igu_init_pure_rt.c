
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qed_ptt {int dummy; } ;
struct qed_igu_info {size_t igu_dsb_id; struct qed_igu_block* entry; } ;
struct qed_igu_block {int status; int is_pf; } ;
struct TYPE_2__ {int opaque_fid; struct qed_igu_info* p_igu_info; } ;
struct qed_hwfn {TYPE_1__ hw_info; int cdev; } ;


 int IGU_REG_BLOCK_CONFIGURATION ;
 int IGU_REG_BLOCK_CONFIGURATION_PXP_TPH_INTERFACE_EN ;
 int IGU_REG_BLOCK_CONFIGURATION_VF_CLEANUP_EN ;
 int QED_IGU_STATUS_DSB ;
 int QED_IGU_STATUS_VALID ;
 size_t QED_MAPPING_MEMORY_SIZE (int ) ;
 int qed_int_igu_init_pure_rt_single (struct qed_hwfn*,struct qed_ptt*,size_t,int ,int) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

void qed_int_igu_init_pure_rt(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         bool b_set, bool b_slowpath)
{
 struct qed_igu_info *p_info = p_hwfn->hw_info.p_igu_info;
 struct qed_igu_block *p_block;
 u16 igu_sb_id = 0;
 u32 val = 0;

 val = qed_rd(p_hwfn, p_ptt, IGU_REG_BLOCK_CONFIGURATION);
 val |= IGU_REG_BLOCK_CONFIGURATION_VF_CLEANUP_EN;
 val &= ~IGU_REG_BLOCK_CONFIGURATION_PXP_TPH_INTERFACE_EN;
 qed_wr(p_hwfn, p_ptt, IGU_REG_BLOCK_CONFIGURATION, val);

 for (igu_sb_id = 0;
      igu_sb_id < QED_MAPPING_MEMORY_SIZE(p_hwfn->cdev); igu_sb_id++) {
  p_block = &p_info->entry[igu_sb_id];

  if (!(p_block->status & QED_IGU_STATUS_VALID) ||
      !p_block->is_pf ||
      (p_block->status & QED_IGU_STATUS_DSB))
   continue;

  qed_int_igu_init_pure_rt_single(p_hwfn, p_ptt, igu_sb_id,
      p_hwfn->hw_info.opaque_fid,
      b_set);
 }

 if (b_slowpath)
  qed_int_igu_init_pure_rt_single(p_hwfn, p_ptt,
      p_info->igu_dsb_id,
      p_hwfn->hw_info.opaque_fid,
      b_set);
}
