
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int TDES0_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ndesc_set_tx_owner(struct dma_desc *p)
{
 p->des0 |= cpu_to_le32(TDES0_OWN);
}
