
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int BUF_SIZE_2KiB ;
 int TDES1_BUFFER1_SIZE_MASK ;
 int TDES1_BUFFER2_SIZE_MASK ;
 int TDES1_BUFFER2_SIZE_SHIFT ;
 int cpu_to_le32 (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void norm_set_tx_desc_len_on_ring(struct dma_desc *p, int len)
{
 if (unlikely(len > BUF_SIZE_2KiB)) {
  unsigned int buffer1 = (BUF_SIZE_2KiB - 1)
     & TDES1_BUFFER1_SIZE_MASK;
  p->des1 |= cpu_to_le32((((len - buffer1)
     << TDES1_BUFFER2_SIZE_SHIFT)
    & TDES1_BUFFER2_SIZE_MASK) | buffer1);
 } else
  p->des1 |= cpu_to_le32((len & TDES1_BUFFER1_SIZE_MASK));
}
