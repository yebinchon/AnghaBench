
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath10k_hw_ce_host_wm_regs {scalar_t__ addr; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {struct ath10k_hw_ce_host_wm_regs* wm_regs; } ;


 int ath10k_ce_write32 (struct ath10k*,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void ath10k_ce_engine_int_status_clear(struct ath10k *ar,
           u32 ce_ctrl_addr,
           unsigned int mask)
{
 struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;

 ath10k_ce_write32(ar, ce_ctrl_addr + wm_regs->addr, mask);
}
