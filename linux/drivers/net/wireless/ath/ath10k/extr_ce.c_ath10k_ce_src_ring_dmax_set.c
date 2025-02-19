
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_hw_ce_ctrl1 {int addr; TYPE_2__* dmax; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {struct ath10k_hw_ce_ctrl1* ctrl1_regs; } ;


 int ath10k_ce_read32 (struct ath10k*,int) ;
 int ath10k_ce_write32 (struct ath10k*,int,int) ;
 int ath10k_set_ring_byte (unsigned int,TYPE_2__*) ;

__attribute__((used)) static inline void ath10k_ce_src_ring_dmax_set(struct ath10k *ar,
            u32 ce_ctrl_addr,
            unsigned int n)
{
 struct ath10k_hw_ce_ctrl1 *ctrl_regs = ar->hw_ce_regs->ctrl1_regs;

 u32 ctrl1_addr = ath10k_ce_read32(ar, ce_ctrl_addr +
       ctrl_regs->addr);

 ath10k_ce_write32(ar, ce_ctrl_addr + ctrl_regs->addr,
     (ctrl1_addr & ~(ctrl_regs->dmax->mask)) |
     ath10k_set_ring_byte(n, ctrl_regs->dmax));
}
