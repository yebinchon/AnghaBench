
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int RDES0_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void enh_desc_set_rx_owner(struct dma_desc *p, int disable_rx_ic)
{
 p->des0 |= cpu_to_le32(RDES0_OWN);
}
