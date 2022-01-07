
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int buf_size; } ;


 int DESC_BUFFER1_SZ_MASK ;
 int DESC_BUFFER2_SZ_MASK ;
 int DESC_BUFFER2_SZ_OFFSET ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int desc_get_buf_len(struct xgmac_dma_desc *p)
{
 u32 len = le32_to_cpu(p->buf_size);
 return (len & DESC_BUFFER1_SZ_MASK) +
  ((len & DESC_BUFFER2_SZ_MASK) >> DESC_BUFFER2_SZ_OFFSET);
}
