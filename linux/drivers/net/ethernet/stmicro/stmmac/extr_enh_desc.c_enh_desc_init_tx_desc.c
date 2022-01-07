
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int ETDES0_OWN ;
 int STMMAC_CHAIN_MODE ;
 int cpu_to_le32 (int ) ;
 int enh_desc_end_tx_desc_on_chain (struct dma_desc*) ;
 int enh_desc_end_tx_desc_on_ring (struct dma_desc*,int) ;

__attribute__((used)) static void enh_desc_init_tx_desc(struct dma_desc *p, int mode, int end)
{
 p->des0 &= cpu_to_le32(~ETDES0_OWN);
 if (mode == STMMAC_CHAIN_MODE)
  enh_desc_end_tx_desc_on_chain(p);
 else
  enh_desc_end_tx_desc_on_ring(p, end);
}
