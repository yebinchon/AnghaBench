
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; } ;


 int TDES2_INTERRUPT_ON_COMPLETION ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwmac4_rd_set_tx_ic(struct dma_desc *p)
{
 p->des2 |= cpu_to_le32(TDES2_INTERRUPT_ON_COMPLETION);
}
