
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int ERDES1_SECOND_ADDRESS_CHAINED ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void ehn_desc_rx_set_on_chain(struct dma_desc *p)
{
 p->des1 |= cpu_to_le32(ERDES1_SECOND_ADDRESS_CHAINED);
}
