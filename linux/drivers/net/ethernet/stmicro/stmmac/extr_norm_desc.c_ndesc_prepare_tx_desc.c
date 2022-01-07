
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; int des1; } ;


 int STMMAC_CHAIN_MODE ;
 unsigned int TDES0_OWN ;
 unsigned int TDES1_CHECKSUM_INSERTION_SHIFT ;
 unsigned int TDES1_FIRST_SEGMENT ;
 unsigned int TDES1_LAST_SEGMENT ;
 unsigned int TX_CIC_FULL ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int norm_set_tx_desc_len_on_chain (struct dma_desc*,int) ;
 int norm_set_tx_desc_len_on_ring (struct dma_desc*,int) ;

__attribute__((used)) static void ndesc_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
      bool csum_flag, int mode, bool tx_own,
      bool ls, unsigned int tot_pkt_len)
{
 unsigned int tdes1 = le32_to_cpu(p->des1);

 if (is_fs)
  tdes1 |= TDES1_FIRST_SEGMENT;
 else
  tdes1 &= ~TDES1_FIRST_SEGMENT;

 if (likely(csum_flag))
  tdes1 |= (TX_CIC_FULL) << TDES1_CHECKSUM_INSERTION_SHIFT;
 else
  tdes1 &= ~(TX_CIC_FULL << TDES1_CHECKSUM_INSERTION_SHIFT);

 if (ls)
  tdes1 |= TDES1_LAST_SEGMENT;

 p->des1 = cpu_to_le32(tdes1);

 if (mode == STMMAC_CHAIN_MODE)
  norm_set_tx_desc_len_on_chain(p, len);
 else
  norm_set_tx_desc_len_on_ring(p, len);

 if (tx_own)
  p->des0 |= cpu_to_le32(TDES0_OWN);
}
