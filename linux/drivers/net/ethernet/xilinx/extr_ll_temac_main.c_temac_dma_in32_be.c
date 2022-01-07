
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {scalar_t__ sdma_regs; } ;


 int ioread32be (scalar_t__) ;

__attribute__((used)) static u32 temac_dma_in32_be(struct temac_local *lp, int reg)
{
 return ioread32be(lp->sdma_regs + (reg << 2));
}
