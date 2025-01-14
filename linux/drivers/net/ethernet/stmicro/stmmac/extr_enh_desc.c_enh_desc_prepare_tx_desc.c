
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 unsigned int ETDES0_CHECKSUM_INSERTION_SHIFT ;
 unsigned int ETDES0_FIRST_SEGMENT ;
 unsigned int ETDES0_LAST_SEGMENT ;
 unsigned int ETDES0_OWN ;
 int STMMAC_CHAIN_MODE ;
 unsigned int TX_CIC_FULL ;
 int cpu_to_le32 (unsigned int) ;
 int dma_wmb () ;
 int enh_set_tx_desc_len_on_chain (struct dma_desc*,int) ;
 int enh_set_tx_desc_len_on_ring (struct dma_desc*,int) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void enh_desc_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
         bool csum_flag, int mode, bool tx_own,
         bool ls, unsigned int tot_pkt_len)
{
 unsigned int tdes0 = le32_to_cpu(p->des0);

 if (mode == STMMAC_CHAIN_MODE)
  enh_set_tx_desc_len_on_chain(p, len);
 else
  enh_set_tx_desc_len_on_ring(p, len);

 if (is_fs)
  tdes0 |= ETDES0_FIRST_SEGMENT;
 else
  tdes0 &= ~ETDES0_FIRST_SEGMENT;

 if (likely(csum_flag))
  tdes0 |= (TX_CIC_FULL << ETDES0_CHECKSUM_INSERTION_SHIFT);
 else
  tdes0 &= ~(TX_CIC_FULL << ETDES0_CHECKSUM_INSERTION_SHIFT);

 if (ls)
  tdes0 |= ETDES0_LAST_SEGMENT;


 if (tx_own)
  tdes0 |= ETDES0_OWN;

 if (is_fs && tx_own)




  dma_wmb();

 p->des0 = cpu_to_le32(tdes0);
}
