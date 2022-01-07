
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_sb_info {int sb_ack; int igu_addr; int sb_virt; } ;
struct qed_sb_attn_info {int index; int sb_attn; } ;
struct qed_pi_info {int cookie; int (* comp_cb ) (struct qed_hwfn*,int ) ;} ;
struct qed_hwfn {TYPE_1__* p_sp_sb; int cdev; int p_dpc_ptt; int my_id; struct qed_sb_attn_info* p_sb_attn; } ;
struct TYPE_2__ {struct qed_pi_info* pi_info_arr; struct qed_sb_info sb_info; } ;


 int ARRAY_SIZE (struct qed_pi_info*) ;
 int DP_ERR (int ,char*) ;
 int DP_NOTICE (int ,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int IGU_INT_DISABLE ;
 int IGU_INT_ENABLE ;
 int NETIF_MSG_INTR ;
 int QED_SB_ATT_IDX ;
 int QED_SB_EVENT_MASK ;
 int QED_SB_IDX ;
 int qed_attn_update_idx (struct qed_hwfn*,struct qed_sb_attn_info*) ;
 int qed_int_attentions (struct qed_hwfn*) ;
 int qed_sb_ack (struct qed_sb_info*,int ,int) ;
 int qed_sb_ack_attn (struct qed_hwfn*,int ,int) ;
 int qed_sb_update_sb_idx (struct qed_sb_info*) ;
 int stub1 (struct qed_hwfn*,int ) ;

void qed_int_sp_dpc(unsigned long hwfn_cookie)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)hwfn_cookie;
 struct qed_pi_info *pi_info = ((void*)0);
 struct qed_sb_attn_info *sb_attn;
 struct qed_sb_info *sb_info;
 int arr_size;
 u16 rc = 0;

 if (!p_hwfn->p_sp_sb) {
  DP_ERR(p_hwfn->cdev, "DPC called - no p_sp_sb\n");
  return;
 }

 sb_info = &p_hwfn->p_sp_sb->sb_info;
 arr_size = ARRAY_SIZE(p_hwfn->p_sp_sb->pi_info_arr);
 if (!sb_info) {
  DP_ERR(p_hwfn->cdev,
         "Status block is NULL - cannot ack interrupts\n");
  return;
 }

 if (!p_hwfn->p_sb_attn) {
  DP_ERR(p_hwfn->cdev, "DPC called - no p_sb_attn");
  return;
 }
 sb_attn = p_hwfn->p_sb_attn;

 DP_VERBOSE(p_hwfn, NETIF_MSG_INTR, "DPC Called! (hwfn %p %d)\n",
     p_hwfn, p_hwfn->my_id);




 qed_sb_ack(sb_info, IGU_INT_DISABLE, 0);


 if (!sb_info->sb_virt) {
  DP_ERR(p_hwfn->cdev,
         "Interrupt Status block is NULL - cannot check for new interrupts!\n");
 } else {
  u32 tmp_index = sb_info->sb_ack;

  rc = qed_sb_update_sb_idx(sb_info);
  DP_VERBOSE(p_hwfn->cdev, NETIF_MSG_INTR,
      "Interrupt indices: 0x%08x --> 0x%08x\n",
      tmp_index, sb_info->sb_ack);
 }

 if (!sb_attn || !sb_attn->sb_attn) {
  DP_ERR(p_hwfn->cdev,
         "Attentions Status block is NULL - cannot check for new attentions!\n");
 } else {
  u16 tmp_index = sb_attn->index;

  rc |= qed_attn_update_idx(p_hwfn, sb_attn);
  DP_VERBOSE(p_hwfn->cdev, NETIF_MSG_INTR,
      "Attention indices: 0x%08x --> 0x%08x\n",
      tmp_index, sb_attn->index);
 }


 if (!(rc & QED_SB_EVENT_MASK)) {
  qed_sb_ack(sb_info, IGU_INT_ENABLE, 1);
  return;
 }


 if (!p_hwfn->p_dpc_ptt) {
  DP_NOTICE(p_hwfn->cdev, "Failed to allocate PTT\n");
  qed_sb_ack(sb_info, IGU_INT_ENABLE, 1);
  return;
 }

 if (rc & QED_SB_ATT_IDX)
  qed_int_attentions(p_hwfn);

 if (rc & QED_SB_IDX) {
  int pi;


  for (pi = 0; pi < arr_size; pi++) {
   pi_info = &p_hwfn->p_sp_sb->pi_info_arr[pi];
   if (pi_info->comp_cb)
    pi_info->comp_cb(p_hwfn, pi_info->cookie);
  }
 }

 if (sb_attn && (rc & QED_SB_ATT_IDX))



  qed_sb_ack_attn(p_hwfn, sb_info->igu_addr, sb_attn->index);

 qed_sb_ack(sb_info, IGU_INT_ENABLE, 1);
}
