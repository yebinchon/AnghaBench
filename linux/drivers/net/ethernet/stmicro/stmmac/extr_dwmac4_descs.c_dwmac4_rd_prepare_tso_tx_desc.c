
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; int des2; } ;


 int TDES2_BUFFER1_SIZE_MASK ;
 int TDES2_BUFFER2_SIZE_MASK ;
 int TDES2_BUFFER2_SIZE_MASK_SHIFT ;
 unsigned int TDES3_FIRST_DESCRIPTOR ;
 unsigned int TDES3_HDR_LEN_SHIFT ;
 unsigned int TDES3_LAST_DESCRIPTOR ;
 unsigned int TDES3_OWN ;
 unsigned int TDES3_SLOT_NUMBER_MASK ;
 unsigned int TDES3_TCP_PKT_PAYLOAD_MASK ;
 unsigned int TDES3_TCP_SEGMENTATION_ENABLE ;
 int cpu_to_le32 (unsigned int) ;
 int dma_wmb () ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void dwmac4_rd_prepare_tso_tx_desc(struct dma_desc *p, int is_fs,
       int len1, int len2, bool tx_own,
       bool ls, unsigned int tcphdrlen,
       unsigned int tcppayloadlen)
{
 unsigned int tdes3 = le32_to_cpu(p->des3);

 if (len1)
  p->des2 |= cpu_to_le32((len1 & TDES2_BUFFER1_SIZE_MASK));

 if (len2)
  p->des2 |= cpu_to_le32((len2 << TDES2_BUFFER2_SIZE_MASK_SHIFT)
       & TDES2_BUFFER2_SIZE_MASK);

 if (is_fs) {
  tdes3 |= TDES3_FIRST_DESCRIPTOR |
    TDES3_TCP_SEGMENTATION_ENABLE |
    ((tcphdrlen << TDES3_HDR_LEN_SHIFT) &
     TDES3_SLOT_NUMBER_MASK) |
    ((tcppayloadlen & TDES3_TCP_PKT_PAYLOAD_MASK));
 } else {
  tdes3 &= ~TDES3_FIRST_DESCRIPTOR;
 }

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
