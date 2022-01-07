
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct qed_vf_info {int abs_vf_id; int* igu_sbs; scalar_t__ num_sbs; } ;
struct qed_ptt {int dummy; } ;
struct qed_igu_block {int igu_sb_id; int status; } ;
struct TYPE_6__ {TYPE_2__* p_igu_info; } ;
struct qed_hwfn {int rel_pf_id; TYPE_3__ hw_info; } ;
struct cau_sb_entry {int dummy; } ;
struct TYPE_4__ {int free_cnt_iov; } ;
struct TYPE_5__ {TYPE_1__ usage; } ;


 scalar_t__ CAU_REG_SB_VAR_MEMORY ;
 int IGU_MAPPING_LINE_FUNCTION_NUMBER ;
 int IGU_MAPPING_LINE_PF_VALID ;
 int IGU_MAPPING_LINE_VALID ;
 int IGU_MAPPING_LINE_VECTOR_NUMBER ;
 scalar_t__ IGU_REG_MAPPING_MEMORY ;
 int QED_IGU_STATUS_FREE ;
 int SET_FIELD (int ,int ,int) ;
 int qed_dmae_host2grc (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__,int,int *) ;
 struct qed_igu_block* qed_get_igu_free_sb (struct qed_hwfn*,int) ;
 int qed_init_cau_sb_entry (struct qed_hwfn*,struct cau_sb_entry*,int ,int,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int ) ;

__attribute__((used)) static u8 qed_iov_alloc_vf_igu_sbs(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       struct qed_vf_info *vf, u16 num_rx_queues)
{
 struct qed_igu_block *p_block;
 struct cau_sb_entry sb_entry;
 int qid = 0;
 u32 val = 0;

 if (num_rx_queues > p_hwfn->hw_info.p_igu_info->usage.free_cnt_iov)
  num_rx_queues = p_hwfn->hw_info.p_igu_info->usage.free_cnt_iov;
 p_hwfn->hw_info.p_igu_info->usage.free_cnt_iov -= num_rx_queues;

 SET_FIELD(val, IGU_MAPPING_LINE_FUNCTION_NUMBER, vf->abs_vf_id);
 SET_FIELD(val, IGU_MAPPING_LINE_VALID, 1);
 SET_FIELD(val, IGU_MAPPING_LINE_PF_VALID, 0);

 for (qid = 0; qid < num_rx_queues; qid++) {
  p_block = qed_get_igu_free_sb(p_hwfn, 0);
  vf->igu_sbs[qid] = p_block->igu_sb_id;
  p_block->status &= ~QED_IGU_STATUS_FREE;
  SET_FIELD(val, IGU_MAPPING_LINE_VECTOR_NUMBER, qid);

  qed_wr(p_hwfn, p_ptt,
         IGU_REG_MAPPING_MEMORY +
         sizeof(u32) * p_block->igu_sb_id, val);


  qed_init_cau_sb_entry(p_hwfn, &sb_entry,
          p_hwfn->rel_pf_id, vf->abs_vf_id, 1);

  qed_dmae_host2grc(p_hwfn, p_ptt,
      (u64)(uintptr_t)&sb_entry,
      CAU_REG_SB_VAR_MEMORY +
      p_block->igu_sb_id * sizeof(u64), 2, ((void*)0));
 }

 vf->num_sbs = (u8) num_rx_queues;

 return vf->num_sbs;
}
