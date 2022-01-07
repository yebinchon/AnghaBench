
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {int buf1_addr; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 desc_get_buf_addr(struct xgmac_dma_desc *p)
{
 return le32_to_cpu(p->buf1_addr);
}
