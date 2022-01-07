
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgmac_dma_desc {void* buf2_addr; void* buf1_addr; } ;


 int MAX_DESC_BUF_SZ ;
 void* cpu_to_le32 (scalar_t__) ;

__attribute__((used)) static inline void desc_set_buf_addr(struct xgmac_dma_desc *p,
         u32 paddr, int len)
{
 p->buf1_addr = cpu_to_le32(paddr);
 if (len > MAX_DESC_BUF_SZ)
  p->buf2_addr = cpu_to_le32(paddr + MAX_DESC_BUF_SZ);
}
