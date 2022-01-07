
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_dma_desc {int flags; } ;


 int DESC_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void desc_set_rx_owner(struct xgmac_dma_desc *p)
{

 p->flags = cpu_to_le32(DESC_OWN);
}
