
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int BUF_SIZE_4KiB ;
 int ETDES1_BUFFER1_SIZE_MASK ;
 int ETDES1_BUFFER2_SIZE_MASK ;
 int ETDES1_BUFFER2_SIZE_SHIFT ;
 int cpu_to_le32 (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void enh_set_tx_desc_len_on_ring(struct dma_desc *p, int len)
{
 if (unlikely(len > BUF_SIZE_4KiB)) {
  p->des1 |= cpu_to_le32((((len - BUF_SIZE_4KiB)
     << ETDES1_BUFFER2_SIZE_SHIFT)
       & ETDES1_BUFFER2_SIZE_MASK) | (BUF_SIZE_4KiB
       & ETDES1_BUFFER1_SIZE_MASK));
 } else
  p->des1 |= cpu_to_le32((len & ETDES1_BUFFER1_SIZE_MASK));
}
