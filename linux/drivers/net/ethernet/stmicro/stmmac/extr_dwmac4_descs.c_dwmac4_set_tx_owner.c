
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int TDES3_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwmac4_set_tx_owner(struct dma_desc *p)
{
 p->des3 |= cpu_to_le32(TDES3_OWN);
}
