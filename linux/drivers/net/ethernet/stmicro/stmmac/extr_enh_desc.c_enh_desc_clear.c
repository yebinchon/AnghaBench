
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {scalar_t__ des2; } ;



__attribute__((used)) static void enh_desc_clear(struct dma_desc *p)
{
 p->des2 = 0;
}
