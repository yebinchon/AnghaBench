
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int TDES1_END_RING ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void ndesc_end_tx_desc_on_ring(struct dma_desc *p, int end)
{
 if (end)
  p->des1 |= cpu_to_le32(TDES1_END_RING);
 else
  p->des1 &= cpu_to_le32(~TDES1_END_RING);
}
