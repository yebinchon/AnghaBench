
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int BUF_SIZE_2KiB ;
 int RDES1_BUFFER2_SIZE_MASK ;
 int RDES1_BUFFER2_SIZE_SHIFT ;
 int RDES1_END_RING ;
 int cpu_to_le32 (int) ;
 int min (int,int) ;

__attribute__((used)) static inline void ndesc_rx_set_on_ring(struct dma_desc *p, int end, int bfsize)
{
 if (bfsize >= BUF_SIZE_2KiB) {
  int bfsize2;

  bfsize2 = min(bfsize - BUF_SIZE_2KiB + 1, BUF_SIZE_2KiB - 1);
  p->des1 |= cpu_to_le32((bfsize2 << RDES1_BUFFER2_SIZE_SHIFT)
       & RDES1_BUFFER2_SIZE_MASK);
 }

 if (end)
  p->des1 |= cpu_to_le32(RDES1_END_RING);
}
