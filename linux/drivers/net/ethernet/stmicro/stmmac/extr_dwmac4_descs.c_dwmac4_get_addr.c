
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void dwmac4_get_addr(struct dma_desc *p, unsigned int *addr)
{
 *addr = le32_to_cpu(p->des0);
}
