
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {scalar_t__ sr_size_addr; } ;


 int ath10k_ce_write32 (struct ath10k*,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void ath10k_ce_src_ring_size_set(struct ath10k *ar,
            u32 ce_ctrl_addr,
            unsigned int n)
{
 ath10k_ce_write32(ar, ce_ctrl_addr +
     ar->hw_ce_regs->sr_size_addr, n);
}
