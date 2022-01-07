
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int TDES3_OWN ;
 int TDES3_OWN_SHIFT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwmac4_get_tx_owner(struct dma_desc *p)
{
 return (le32_to_cpu(p->des3) & TDES3_OWN) >> TDES3_OWN_SHIFT;
}
