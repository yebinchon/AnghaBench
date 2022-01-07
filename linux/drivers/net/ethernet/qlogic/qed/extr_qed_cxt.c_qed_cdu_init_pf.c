
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qed_tid_seg {int type; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct qed_ilt_client_cfg {TYPE_4__ first; TYPE_3__* pf_blks; TYPE_2__ p_size; } ;
struct qed_hwfn {TYPE_1__* p_cxt_mngr; } ;
struct TYPE_7__ {int start_line; } ;
struct TYPE_5__ {struct qed_ilt_client_cfg* clients; } ;


 size_t CDUT_FL_SEG_BLK (int,int ) ;
 int CDUT_SEG_ALIGNMET_IN_BYTES ;
 size_t CDUT_SEG_BLK (int) ;
 int CDU_SEG_REG_OFFSET ;
 int CDU_SEG_REG_TYPE ;
 size_t ILT_CLI_CDUT ;
 int ILT_PAGE_IN_BYTES (int ) ;
 int NUM_TASK_PF_SEGMENTS ;
 int PF ;
 int SET_FIELD (int,int ,int) ;
 int STORE_RT_REG (struct qed_hwfn*,int const,int) ;
 struct qed_tid_seg* qed_cxt_tid_seg_info (struct qed_hwfn*,int) ;

__attribute__((used)) static void qed_cdu_init_pf(struct qed_hwfn *p_hwfn)
{
 struct qed_ilt_client_cfg *p_cli;
 struct qed_tid_seg *p_seg;
 u32 cdu_seg_params, offset;
 int i;

 static const u32 rt_type_offset_arr[] = {
  131,
  130,
  129,
  128
 };

 static const u32 rt_type_offset_fl_arr[] = {
  135,
  134,
  133,
  132
 };

 p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUT];


 for (i = 0; i < NUM_TASK_PF_SEGMENTS; i++) {

  p_seg = qed_cxt_tid_seg_info(p_hwfn, i);
  if (!p_seg)
   continue;






  offset = (ILT_PAGE_IN_BYTES(p_cli->p_size.val) *
     (p_cli->pf_blks[CDUT_SEG_BLK(i)].start_line -
      p_cli->first.val)) / CDUT_SEG_ALIGNMET_IN_BYTES;

  cdu_seg_params = 0;
  SET_FIELD(cdu_seg_params, CDU_SEG_REG_TYPE, p_seg->type);
  SET_FIELD(cdu_seg_params, CDU_SEG_REG_OFFSET, offset);
  STORE_RT_REG(p_hwfn, rt_type_offset_arr[i], cdu_seg_params);

  offset = (ILT_PAGE_IN_BYTES(p_cli->p_size.val) *
     (p_cli->pf_blks[CDUT_FL_SEG_BLK(i, PF)].start_line -
      p_cli->first.val)) / CDUT_SEG_ALIGNMET_IN_BYTES;

  cdu_seg_params = 0;
  SET_FIELD(cdu_seg_params, CDU_SEG_REG_TYPE, p_seg->type);
  SET_FIELD(cdu_seg_params, CDU_SEG_REG_OFFSET, offset);
  STORE_RT_REG(p_hwfn, rt_type_offset_fl_arr[i], cdu_seg_params);
 }
}
