
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {scalar_t__ sdma_regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void temac_dma_out32_le(struct temac_local *lp, int reg, u32 value)
{
 iowrite32(value, lp->sdma_regs + (reg << 2));
}
