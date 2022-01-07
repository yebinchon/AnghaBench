
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int TDES3_LAST_DESCRIPTOR ;
 int TDES3_LAST_DESCRIPTOR_SHIFT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwmac4_get_tx_ls(struct dma_desc *p)
{
 return (le32_to_cpu(p->des3) & TDES3_LAST_DESCRIPTOR)
  >> TDES3_LAST_DESCRIPTOR_SHIFT;
}
