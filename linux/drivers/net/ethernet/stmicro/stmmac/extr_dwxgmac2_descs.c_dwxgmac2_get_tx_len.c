
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; } ;


 int XGMAC_TDES2_B1L ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwxgmac2_get_tx_len(struct dma_desc *p)
{
 return (le32_to_cpu(p->des2) & XGMAC_TDES2_B1L);
}
