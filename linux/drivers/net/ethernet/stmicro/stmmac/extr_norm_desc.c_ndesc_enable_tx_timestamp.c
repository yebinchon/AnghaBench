
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int TDES1_TIME_STAMP_ENABLE ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ndesc_enable_tx_timestamp(struct dma_desc *p)
{
 p->des1 |= cpu_to_le32(TDES1_TIME_STAMP_ENABLE);
}
