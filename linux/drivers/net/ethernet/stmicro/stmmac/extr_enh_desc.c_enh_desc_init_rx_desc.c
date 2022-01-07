
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; int des0; } ;


 int BUF_SIZE_8KiB ;
 int ERDES1_BUFFER1_SIZE_MASK ;
 int ERDES1_DISABLE_IC ;
 int RDES0_OWN ;
 int STMMAC_CHAIN_MODE ;
 int cpu_to_le32 (int) ;
 int ehn_desc_rx_set_on_chain (struct dma_desc*) ;
 int ehn_desc_rx_set_on_ring (struct dma_desc*,int,int) ;
 int min (int,int ) ;

__attribute__((used)) static void enh_desc_init_rx_desc(struct dma_desc *p, int disable_rx_ic,
      int mode, int end, int bfsize)
{
 int bfsize1;

 p->des0 |= cpu_to_le32(RDES0_OWN);

 bfsize1 = min(bfsize, BUF_SIZE_8KiB);
 p->des1 |= cpu_to_le32(bfsize1 & ERDES1_BUFFER1_SIZE_MASK);

 if (mode == STMMAC_CHAIN_MODE)
  ehn_desc_rx_set_on_chain(p);
 else
  ehn_desc_rx_set_on_ring(p, end, bfsize);

 if (disable_rx_ic)
  p->des1 |= cpu_to_le32(ERDES1_DISABLE_IC);
}
