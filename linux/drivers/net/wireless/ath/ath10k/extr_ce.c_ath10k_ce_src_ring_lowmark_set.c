
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_hw_ce_dst_src_wm_regs {int addr; TYPE_2__* wm_low; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {struct ath10k_hw_ce_dst_src_wm_regs* wm_srcr; } ;


 int ath10k_ce_read32 (struct ath10k*,int) ;
 int ath10k_ce_write32 (struct ath10k*,int,int) ;
 int ath10k_set_ring_byte (unsigned int,TYPE_2__*) ;

__attribute__((used)) static inline void ath10k_ce_src_ring_lowmark_set(struct ath10k *ar,
        u32 ce_ctrl_addr,
        unsigned int n)
{
 struct ath10k_hw_ce_dst_src_wm_regs *srcr_wm = ar->hw_ce_regs->wm_srcr;
 u32 addr = ath10k_ce_read32(ar, ce_ctrl_addr + srcr_wm->addr);

 ath10k_ce_write32(ar, ce_ctrl_addr + srcr_wm->addr,
     (addr & ~(srcr_wm->wm_low->mask)) |
     (ath10k_set_ring_byte(n, srcr_wm->wm_low)));
}
