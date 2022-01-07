
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int flags; } ;


 int TXDESC_END_RING ;
 int cpu_to_le32 (int ) ;
 int memset (struct xgmac_dma_desc*,int ,int) ;

__attribute__((used)) static inline void desc_init_tx_desc(struct xgmac_dma_desc *p, u32 ring_size)
{
 memset(p, 0, sizeof(*p) * ring_size);
 p[ring_size - 1].flags = cpu_to_le32(TXDESC_END_RING);
}
