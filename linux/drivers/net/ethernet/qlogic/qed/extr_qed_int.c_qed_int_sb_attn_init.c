
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_sb_attn_info {int* parity_mask; scalar_t__ mfw_attn_addr; TYPE_1__* p_aeu_desc; int sb_phys; void* sb_attn; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rel_pf_id; struct qed_sb_attn_info* p_sb_attn; } ;
struct aeu_invert_reg_bit {int flags; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct aeu_invert_reg_bit* bits; } ;


 scalar_t__ ATTENTION_LENGTH (int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int) ;
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_0 ;
 int NETIF_MSG_INTR ;
 int NUM_ATTN_REGS ;
 TYPE_1__* aeu_descs ;
 int memset (int*,int ,int) ;
 scalar_t__ qed_int_is_parity_flag (struct qed_hwfn*,struct aeu_invert_reg_bit*) ;
 int qed_int_sb_attn_setup (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static void qed_int_sb_attn_init(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     void *sb_virt_addr, dma_addr_t sb_phy_addr)
{
 struct qed_sb_attn_info *sb_info = p_hwfn->p_sb_attn;
 int i, j, k;

 sb_info->sb_attn = sb_virt_addr;
 sb_info->sb_phys = sb_phy_addr;


 sb_info->p_aeu_desc = aeu_descs;


 memset(sb_info->parity_mask, 0, sizeof(u32) * NUM_ATTN_REGS);
 for (i = 0; i < NUM_ATTN_REGS; i++) {

  for (j = 0, k = 0; k < 32; j++) {
   struct aeu_invert_reg_bit *p_aeu;

   p_aeu = &aeu_descs[i].bits[j];
   if (qed_int_is_parity_flag(p_hwfn, p_aeu))
    sb_info->parity_mask[i] |= 1 << k;

   k += ATTENTION_LENGTH(p_aeu->flags);
  }
  DP_VERBOSE(p_hwfn, NETIF_MSG_INTR,
      "Attn Mask [Reg %d]: 0x%08x\n",
      i, sb_info->parity_mask[i]);
 }


 sb_info->mfw_attn_addr = (p_hwfn->rel_pf_id << 3) +
     MISC_REG_AEU_GENERAL_ATTN_0;

 qed_int_sb_attn_setup(p_hwfn, p_ptt);
}
