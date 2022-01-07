
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_dma_desc {int buf_size; } ;


 int RXDESC1_END_RING ;
 int cpu_to_le32 (int ) ;
 int desc_set_buf_len (struct xgmac_dma_desc*,int) ;
 int memset (struct xgmac_dma_desc*,int ,int) ;

__attribute__((used)) static inline void desc_init_rx_desc(struct xgmac_dma_desc *p, int ring_size,
         int buf_sz)
{
 struct xgmac_dma_desc *end = p + ring_size - 1;

 memset(p, 0, sizeof(*p) * ring_size);

 for (; p <= end; p++)
  desc_set_buf_len(p, buf_sz);

 end->buf_size |= cpu_to_le32(RXDESC1_END_RING);
}
