
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_hw_ce_host_wm_regs {int wm_mask; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {int host_ie_addr; struct ath10k_hw_ce_host_wm_regs* wm_regs; } ;


 int ath10k_ce_read32 (struct ath10k*,int) ;
 int ath10k_ce_write32 (struct ath10k*,int,int) ;

__attribute__((used)) static inline void ath10k_ce_watermark_intr_disable(struct ath10k *ar,
          u32 ce_ctrl_addr)
{
 struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;

 u32 host_ie_addr = ath10k_ce_read32(ar, ce_ctrl_addr +
         ar->hw_ce_regs->host_ie_addr);

 ath10k_ce_write32(ar, ce_ctrl_addr + ar->hw_ce_regs->host_ie_addr,
     host_ie_addr & ~(wm_regs->wm_mask));
}
