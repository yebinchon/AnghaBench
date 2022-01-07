
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int flags; } ;


 int TXDESC_END_RING ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void desc_clear_tx_owner(struct xgmac_dma_desc *p)
{
 u32 tmpflags = le32_to_cpu(p->flags);
 tmpflags &= TXDESC_END_RING;
 p->flags = cpu_to_le32(tmpflags);
}
