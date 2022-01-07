
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int STMMAC_CHAIN_MODE ;
 int TDES0_OWN ;
 int cpu_to_le32 (int ) ;
 int ndesc_end_tx_desc_on_ring (struct dma_desc*,int) ;
 int ndesc_tx_set_on_chain (struct dma_desc*) ;

__attribute__((used)) static void ndesc_init_tx_desc(struct dma_desc *p, int mode, int end)
{
 p->des0 &= cpu_to_le32(~TDES0_OWN);
 if (mode == STMMAC_CHAIN_MODE)
  ndesc_tx_set_on_chain(p);
 else
  ndesc_end_tx_desc_on_ring(p, end);
}
