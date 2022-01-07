
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;
struct npc_kpu_profile_action {int shift; int right; int mask; int offset; int ptr_advance; int flags; int ltype; int lid; int next_state; int parse_done; int cap_ena; int bypass_count; int dp2_offset; int dp1_offset; int dp0_offset; int errcode; int errlev; } ;
struct npc_kpu_action1 {int dp2_offset; int dp1_offset; int dp0_offset; int errcode; int errlev; int member_0; } ;
struct npc_kpu_action0 {int var_len_shift; int var_len_right; int var_len_mask; int var_len_offset; int ptr_advance; int capture_flags; int capture_ltype; int capture_lid; int next_state; int parse_done; int capture_ena; int byp_count; int member_0; } ;


 int NPC_AF_KPUX_ENTRYX_ACTION0 (int,int) ;
 int NPC_AF_KPUX_ENTRYX_ACTION1 (int,int) ;
 int NPC_AF_PKINDX_ACTION0 (int) ;
 int NPC_AF_PKINDX_ACTION1 (int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void npc_config_kpuaction(struct rvu *rvu, int blkaddr,
     struct npc_kpu_profile_action *kpuaction,
     int kpu, int entry, bool pkind)
{
 struct npc_kpu_action0 action0 = {0};
 struct npc_kpu_action1 action1 = {0};
 u64 reg;

 action1.errlev = kpuaction->errlev;
 action1.errcode = kpuaction->errcode;
 action1.dp0_offset = kpuaction->dp0_offset;
 action1.dp1_offset = kpuaction->dp1_offset;
 action1.dp2_offset = kpuaction->dp2_offset;

 if (pkind)
  reg = NPC_AF_PKINDX_ACTION1(entry);
 else
  reg = NPC_AF_KPUX_ENTRYX_ACTION1(kpu, entry);

 rvu_write64(rvu, blkaddr, reg, *(u64 *)&action1);

 action0.byp_count = kpuaction->bypass_count;
 action0.capture_ena = kpuaction->cap_ena;
 action0.parse_done = kpuaction->parse_done;
 action0.next_state = kpuaction->next_state;
 action0.capture_lid = kpuaction->lid;
 action0.capture_ltype = kpuaction->ltype;
 action0.capture_flags = kpuaction->flags;
 action0.ptr_advance = kpuaction->ptr_advance;
 action0.var_len_offset = kpuaction->offset;
 action0.var_len_mask = kpuaction->mask;
 action0.var_len_right = kpuaction->right;
 action0.var_len_shift = kpuaction->shift;

 if (pkind)
  reg = NPC_AF_PKINDX_ACTION0(entry);
 else
  reg = NPC_AF_KPUX_ENTRYX_ACTION0(kpu, entry);

 rvu_write64(rvu, blkaddr, reg, *(u64 *)&action0);
}
