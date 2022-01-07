
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_ce {int vaddr_rri; int paddr_rri; } ;
struct ath10k {TYPE_3__* hw_ce_regs; int dev; } ;
struct TYPE_6__ {int ce_rri_low; int ce_rri_high; TYPE_2__* upd; TYPE_1__* ctrl1_regs; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_4__ {int addr; } ;


 int CE_COUNT ;
 int CE_DESC_ADDR_HI_MASK ;
 int GFP_KERNEL ;
 int ath10k_ce_base_address (struct ath10k*,int) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_read32 (struct ath10k*,int) ;
 int ath10k_ce_write32 (struct ath10k*,int,int) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int lower_32_bits (int ) ;
 int memset (int ,int ,int) ;
 int upper_32_bits (int ) ;

void ath10k_ce_alloc_rri(struct ath10k *ar)
{
 int i;
 u32 value;
 u32 ctrl1_regs;
 u32 ce_base_addr;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 ce->vaddr_rri = dma_alloc_coherent(ar->dev,
        (CE_COUNT * sizeof(u32)),
        &ce->paddr_rri, GFP_KERNEL);

 if (!ce->vaddr_rri)
  return;

 ath10k_ce_write32(ar, ar->hw_ce_regs->ce_rri_low,
     lower_32_bits(ce->paddr_rri));
 ath10k_ce_write32(ar, ar->hw_ce_regs->ce_rri_high,
     (upper_32_bits(ce->paddr_rri) &
     CE_DESC_ADDR_HI_MASK));

 for (i = 0; i < CE_COUNT; i++) {
  ctrl1_regs = ar->hw_ce_regs->ctrl1_regs->addr;
  ce_base_addr = ath10k_ce_base_address(ar, i);
  value = ath10k_ce_read32(ar, ce_base_addr + ctrl1_regs);
  value |= ar->hw_ce_regs->upd->mask;
  ath10k_ce_write32(ar, ce_base_addr + ctrl1_regs, value);
 }

 memset(ce->vaddr_rri, 0, CE_COUNT * sizeof(u32));
}
