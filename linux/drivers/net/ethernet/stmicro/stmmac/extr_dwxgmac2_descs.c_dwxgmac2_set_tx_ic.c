
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; } ;


 int XGMAC_TDES2_IOC ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwxgmac2_set_tx_ic(struct dma_desc *p)
{
 p->des2 |= cpu_to_le32(XGMAC_TDES2_IOC);
}
