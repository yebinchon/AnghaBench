
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int dummy; } ;


 int desc_set_buf_addr (struct xgmac_dma_desc*,int ,int) ;
 int desc_set_buf_len (struct xgmac_dma_desc*,int) ;

__attribute__((used)) static inline void desc_set_buf_addr_and_size(struct xgmac_dma_desc *p,
           u32 paddr, int len)
{
 desc_set_buf_len(p, len);
 desc_set_buf_addr(p, paddr, len);
}
