
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; } ;


 int TDES2_BUFFER1_SIZE_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwmac4_rd_get_tx_len(struct dma_desc *p)
{
 return (le32_to_cpu(p->des2) & TDES2_BUFFER1_SIZE_MASK);
}
