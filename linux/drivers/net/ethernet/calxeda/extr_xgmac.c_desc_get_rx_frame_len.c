
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int flags; } ;


 scalar_t__ ETH_FCS_LEN ;
 int RXDESC_FRAME_LEN_MASK ;
 int RXDESC_FRAME_LEN_OFFSET ;
 int RXDESC_FRAME_TYPE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int desc_get_rx_frame_len(struct xgmac_dma_desc *p)
{
 u32 data = le32_to_cpu(p->flags);
 u32 len = (data & RXDESC_FRAME_LEN_MASK) >> RXDESC_FRAME_LEN_OFFSET;
 if (data & RXDESC_FRAME_TYPE)
  len -= ETH_FCS_LEN;

 return len;
}
