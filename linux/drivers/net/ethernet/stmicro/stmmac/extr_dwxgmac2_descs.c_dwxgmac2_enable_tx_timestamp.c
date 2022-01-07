
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; } ;


 int XGMAC_TDES2_TTSE ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwxgmac2_enable_tx_timestamp(struct dma_desc *p)
{
 p->des2 |= cpu_to_le32(XGMAC_TDES2_TTSE);
}
