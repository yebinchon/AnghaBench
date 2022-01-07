
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int TDES1_BUFFER1_SIZE_MASK ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void norm_set_tx_desc_len_on_chain(struct dma_desc *p, int len)
{
 p->des1 |= cpu_to_le32(len & TDES1_BUFFER1_SIZE_MASK);
}
