
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int ETDES0_INTERRUPT ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void enh_desc_set_tx_ic(struct dma_desc *p)
{
 p->des0 |= cpu_to_le32(ETDES0_INTERRUPT);
}
