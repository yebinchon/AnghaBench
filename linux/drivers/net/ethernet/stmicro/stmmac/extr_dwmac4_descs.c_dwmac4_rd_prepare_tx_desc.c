
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; int des2; } ;


 int TDES2_BUFFER1_SIZE_MASK ;
 unsigned int TDES3_CHECKSUM_INSERTION_SHIFT ;
 unsigned int TDES3_FIRST_DESCRIPTOR ;
 unsigned int TDES3_LAST_DESCRIPTOR ;
 unsigned int TDES3_OWN ;
 unsigned int TDES3_PACKET_SIZE_MASK ;
 unsigned int TX_CIC_FULL ;
 int cpu_to_le32 (unsigned int) ;
 int dma_wmb () ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void dwmac4_rd_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
          bool csum_flag, int mode, bool tx_own,
          bool ls, unsigned int tot_pkt_len)
{
 unsigned int tdes3 = le32_to_cpu(p->des3);

 p->des2 |= cpu_to_le32(len & TDES2_BUFFER1_SIZE_MASK);

 tdes3 |= tot_pkt_len & TDES3_PACKET_SIZE_MASK;
 if (is_fs)
  tdes3 |= TDES3_FIRST_DESCRIPTOR;
 else
  tdes3 &= ~TDES3_FIRST_DESCRIPTOR;

 if (likely(csum_flag))
  tdes3 |= (TX_CIC_FULL << TDES3_CHECKSUM_INSERTION_SHIFT);
 else
  tdes3 &= ~(TX_CIC_FULL << TDES3_CHECKSUM_INSERTION_SHIFT);

 if (ls)
  tdes3 |= TDES3_LAST_DESCRIPTOR;
 else
  tdes3 &= ~TDES3_LAST_DESCRIPTOR;


 if (tx_own)
  tdes3 |= TDES3_OWN;

 if (is_fs && tx_own)




  dma_wmb();

 p->des3 = cpu_to_le32(tdes3);
}
