
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {int sr_base_addr_hi; } ;


 int CE_DESC_ADDR_HI_MASK ;
 int ath10k_ce_write32 (struct ath10k*,int,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void ath10k_ce_set_src_ring_base_addr_hi(struct ath10k *ar,
      u32 ce_ctrl_addr,
      u64 addr)
{
 u32 addr_hi = upper_32_bits(addr) & CE_DESC_ADDR_HI_MASK;

 ath10k_ce_write32(ar, ce_ctrl_addr +
     ar->hw_ce_regs->sr_base_addr_hi, addr_hi);
}
